#![no_main]
#![no_std]
#![allow(non_snake_case)] 
#![deny(unsafe_code)]
#![deny(warnings)]

extern crate panic_halt;

use cortex_m_rt::entry;
use stm32l0xx_hal::{self, pac, pwm, prelude::*, rcc::Config};

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

    // Configure the pwm on PA5 (blue led)
    let pwm = pwm::Timer::new(dp.TIM2, 1.khz(), &mut rcc);
    let mut pwm = pwm.channel1.assign(gpioa.pa5);
    
    let max_duty = pwm.get_max_duty();
    pwm.enable();

    loop{
        // PWM on blue LED   
        pwm.set_duty(max_duty);
        delay.delay_ms(500_u16);
        pwm.set_duty(max_duty / 2);
        delay.delay_ms(500_u16);
        pwm.set_duty(max_duty / 4);
        delay.delay_ms(500_u16);
        pwm.set_duty(max_duty / 8);
        delay.delay_ms(500_u16);
    }
}