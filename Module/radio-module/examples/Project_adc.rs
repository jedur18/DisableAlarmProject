#![no_main]
#![no_std]
#![allow(non_snake_case)] 
#![deny(unsafe_code)]
#![deny(warnings)]

extern crate panic_halt;

use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;
use stm32l0xx_hal::{self, pac, prelude::*, rcc::Config};

extern crate cortex_m;
#[entry]
fn main() -> ! {
    let dp = pac::Peripherals::take().unwrap();
    let cp = cortex_m::Peripherals::take().unwrap();
    // Configure the clock.
    let mut rcc = dp.RCC.freeze(Config::hsi16());
    // Get the delay provider.
    let mut delay = cp.SYST.delay(rcc.clocks);
    // Acquire GPIOA peripherial and power the clock for it
    let gpioa = dp.GPIOA.split(&mut rcc);
    // Configure the ADC on PA4 pin
    let mut adc = dp.ADC.constrain(&mut rcc);
    let mut adc4 = gpioa.pa4.into_analog();

    loop {
        // We get one lecture each second
        let adc_value: u16 = adc.read(&mut adc4).unwrap();
        hprintln!("ADC lecture on PA4: {}", adc_value).unwrap();
        delay.delay(1000.ms());
    }
}