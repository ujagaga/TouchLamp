/*
 * main.c
 *
 *  Created on: Feb 15, 2016
 *      Author: ujagaga
 */


#include <avr/io.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdbool.h>
#include <avr/eeprom.h>

#define ledDbg()				do{OCR0A = 64; _delay_ms(200); OCR0A = 0;}while(0)


/* Working configuration.
 * The assumption is that we are using the same port for the sensor and ethalon pin.
 * The LED pin must be PB2 since it is connected to Timer0 OCM */
#define ETALON_MASK				(1 << PA1)	// Pin to measure the fixed capacity charge time as it may change in time or with voltage
#define SENS_MASK				(1 << PA0) 	// Pin where the sensor is connected
#define PORT					PORTA		// Control port output register
#define PIN						PINA		// Control port input register
#define DIR						DDRA		// Control port direction register
#define DETECT_COEF				25			/* Minimum percentage expected for sensor capacity to change when touched. The lower it is,
											   the more sensitive the sensor is, but also less	noise resistant */
/* End of working cfg */


/* Global variables */
uint8_t pwm_count = 0;
uint8_t EEMEM savedPwm;
uint16_t ratio;		/* ratio between charge time of fixed capacitor and sensor	*/

/* PWM control macros */
#define PwmOff()				do{ pwm_count = 0; OCR0A = pwm_count;}while(0)
#define PwmOn()					do{ pwm_count = eeprom_read_byte(&savedPwm); OCR0A = pwm_count;}while(0)
#define isPwmOn()				(pwm_count > 0)

/* Detect macros */
#define SensEtalon()			((PIN & ETALON_MASK) == ETALON_MASK)
#define SensDetect()			((PIN & SENS_MASK) == SENS_MASK)

#define PwmUp()					do{	pwm_count <<= 1; pwm_count++; OCR0A = pwm_count;} while(0)

void HwInit( void )
{

	DIR = ETALON_MASK | SENS_MASK;
	PORT = ~(ETALON_MASK | SENS_MASK);		// Activate pull-up resistors on free pins to prevent self oscillation

	DDRB |= (1 << PB2);						// LED pin as output
	PORTB |= ~(1 << PB2);					// LED off

	TCCR1B = (1<<CS10);						// Start timer 1 with no pre-scaler

	/* Timer 0 */
	TCCR0A = (1 << COM0A1) | (1 << WGM00);  // phase correct PWM mode
	OCR0A  = 0;                          	// initial PWM pulse width
	TCCR0B = (1 << CS01);   				// clock source = CLK/8, start PWM


}

void clearSensor( void ){
	DIR |= ETALON_MASK | SENS_MASK;		// set sensor pins to output
	PORT &= ~(ETALON_MASK | SENS_MASK);	// clear sensor pins
	_delay_ms(10);
	DIR &= ~(ETALON_MASK | SENS_MASK);	// set sensor pins to input
}


/* Function to detect a touch on the sensor.
 * It measures the fixed capacity on "ETHALON" pin and compares it to capacity on "SENSOR" pin.This algorithm
 * assumes that both the ETHALON capacitor charge time and SENSOR charge time are less then 256 units of timer 1.
 * */
bool isTouched( void )
{
	uint16_t etalon_time, detect_time, threashold;

	clearSensor();

	TCNT1 = 0;
	while(!SensEtalon());

	etalon_time = TCNT1;

	clearSensor();

	TCNT1 = 0;
	while(!SensDetect());
	detect_time = TCNT1;

	threashold = (((etalon_time * 10) / ratio) * (100 + DETECT_COEF)) / 100;

	if(detect_time > threashold){
		return true;
	}

	return false;

}

/* Calculates the ratio between the "ETHALON" capacity and "SENSOR" capacity
 * because the charge time may vary with different setup*/
void calibrate( void )
{
	uint16_t etalon_time, detect_time;

	clearSensor();

	TCNT1 = 0;

	while(!SensEtalon());

	etalon_time = TCNT1;

	clearSensor();

	TCNT1 = 0;
	while(!SensDetect());
	detect_time = TCNT1;

	ratio = (etalon_time * 10) / detect_time;

}

int main(void)
{
	uint8_t touchCount;

	HwInit();

	calibrate();

	while(1){
		touchCount = 0;

		if(isTouched()){

			while(isTouched()){
				_delay_ms(100);
				touchCount++;

				if((touchCount % 5) == 0){
					PwmUp();
				}
			}

			if(touchCount < 5){
				/* Only one short touch */
				if(isPwmOn()){
					/* Was on */
					PwmOff();
				}else{
					/* Was off */
					PwmOn();
				}
			}else{
				eeprom_update_byte(&savedPwm, pwm_count);
			}
		}
	}

	return 0;
}




