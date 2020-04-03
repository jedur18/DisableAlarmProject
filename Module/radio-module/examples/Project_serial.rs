//#![deny(warnings)]
#![deny(unsafe_code)]
#![no_main]
#![no_std]
#![allow(non_snake_case)] 

extern crate panic_halt;

//use core::fmt::Write;
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;
use stm32l0xx_hal::{pac, prelude::*, rcc::Config, serial};

use nb::block;

#[entry]
fn main() -> ! {
    let dp = pac::Peripherals::take().unwrap();
    let cp = cortex_m::Peripherals::take().unwrap();
    // Configure the clock.
    let mut rcc = dp.RCC.freeze(Config::hsi16());
    // Get the delay provider.
    let mut delay = cp.SYST.delay(rcc.clocks);

    // Acquire the GPIOA peripheral. This also enables the clock for GPIOA in
    // the RCC register.
    let gpioa = dp.GPIOA.split(&mut rcc);

    // Assign the transmiter pin
    let tx_pin = gpioa.pa2;
    // Assign the receiver pin
    let rx_pin = gpioa.pa3;

    // Configure the serial peripheral.
    let serial = dp
        .USART2
        .usart((tx_pin, rx_pin), serial::Config::default(), &mut rcc)
        .unwrap();

    let (mut tx, mut rx) = serial.split();

    // core::fmt::Write is implemented for tx.
    //writeln!(tx, "Hello, world!").unwrap();
    let default_message: u8 = 0b01;
    let message_to_send: u8 = 0b1111;
    // The idea to try this program is to put a wire between tx and rx pins and communicate between them
    // We write message_to_send in our tx pin and try to read the message in the rx pin. If we succed we print
    // the read value, if nothing is read we print the default value and warns the user (nothing read will imply 
    // reading a 0 so message_to_send must be different of 0 for this example).
    // For connecting to other device connect my tx to the rx of the other device and my rx to the tx of
    // the other device and build a logic similar to this...
    loop {
        block!(tx.write(message_to_send)).ok();
        let received = block!(rx.read()).unwrap();
        // If we received any value we will print it, if not we print the default value
        if received != 0 {
            hprintln!("The received value is {}", received).unwrap();
        }
        else {
            hprintln!("Warning, no value received. Default value is printed: {}", default_message).unwrap();
        }
        delay.delay(1000.ms());
        
    }
}
