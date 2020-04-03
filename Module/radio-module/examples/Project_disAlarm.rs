//! Low-Power Timer wakeup.

#![no_main]
#![no_std]
#![allow(non_snake_case)] 

extern crate panic_semihosting;
use cortex_m_semihosting::hprintln;
//use nb::block;
//use cortex_m::{asm, peripheral::NVIC};
use cortex_m::asm;
use cortex_m_rt::entry;
use stm32l0xx_hal::{
    prelude::*,
 //   exti::{Exti, DirectLine},
    gpio::{
        Output,
        PushPull,
        gpiob::PB,
    },
    lptim::{
      //  self,
        LpTimer,
        ClockSrc,
    },
    pac,
    pwr::{
      //  self,
        PWR,
    },
    rcc,
};


#[entry]
fn main() -> ! {
    let cp = pac::CorePeripherals::take().unwrap();
    let dp = pac::Peripherals::take().unwrap();

    let mut _scb   = cp.SCB;
    let mut rcc   = dp.RCC.freeze(rcc::Config::msi(rcc::MSIRange::Range0));
//    let mut exti  = Exti::new(dp.EXTI);
    let mut pwr   = PWR::new(dp.PWR, &mut rcc);

    // Taking GPIOA and GPIOB peripherial and enabling clocks in RCC register
    let gpioa = dp.GPIOA.split(&mut rcc);
    let gpiob = dp.GPIOB.split(&mut rcc);

 //------------   Seting up the hardware     --------------
    // Configure buzzer
   let mut buzzer = gpiob.pb2.into_push_pull_output().downgrade();
 
  
    // Configure LEDs
    // Configure PA0 and PA5 as output.
    let mut redLED = gpioa.pa0.into_push_pull_output();
    let mut blueLED = gpioa.pa5.into_push_pull_output();


    // Configure matrix keyboard
    // Configire PA9,PA10,PA11,PA12 as output
    let mut row1 = gpioa.pa9.into_push_pull_output();
    let mut row2 = gpioa.pa10.into_push_pull_output();
    let mut row3 = gpioa.pa11.into_push_pull_output();
    let mut row4 = gpioa.pa12.into_push_pull_output();
    // Configure PB5,PB6 and PB7 as input
    let col1 = gpiob.pb7.into_pull_down_input();
    let col2 = gpiob.pb6.into_pull_down_input();
    let col3 = gpiob.pb5.into_pull_down_input();
// ----------------------------------------------------------------------
    let mut _lptim = LpTimer::init_periodic(dp.LPTIM, &mut pwr, &mut rcc, ClockSrc::Lse);
// Definition of system state:
    let mut alarm_state: bool = false; // In false state we are in normal mode, in true state we are in alarm mode
// Set rows to low. They will be powered in each inspection
row1.set_low().unwrap();
row2.set_low().unwrap();
row3.set_low().unwrap();
row4.set_low().unwrap();
// Control for the keyboard
let mut n_introduced:usize = 0; // number of digits introduced
let mut introduced_pin: [u8;4] = [48u8; 4]; // initial value is array of 0
let correct_pin:[u8;4] = [4,5,7,3];

    loop {
       if alarm_state == true { 
       // Light led red    
       redLED.set_high().unwrap();
       // Make the buzzer sound
         sound_buzzer(&mut buzzer);
       // Scan the keyboard for the key to disable the alarm
       if n_introduced < 4 { // while the number of number introduced is lower than 4 we keep reading keyboard. I do not put while because i want the buzzer keeps sounding
        // Scan n1 n2 and n3
        row1.set_high().unwrap();
        if col1.is_high().unwrap(){
            introduced_pin[n_introduced] = 1;
            hprintln!("Number introduced: {}", 1).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col2.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 2;
            hprintln!("Number introduced: {}", 2).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col3.is_high().unwrap() && n_introduced<4 {
            introduced_pin[n_introduced] = 3;
            hprintln!("Number introduced: {}", 3).unwrap();
            n_introduced = n_introduced + 1;
        }
        row1.set_low().unwrap();
        // Scan n4 n5 and n6
        row2.set_high().unwrap();
        if col1.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 4;
            hprintln!("Number introduced: {}", 4).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col2.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 5;
            hprintln!("Number introduced: {}", 5).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col3.is_high().unwrap() && n_introduced<4 {
            introduced_pin[n_introduced] = 6;
            hprintln!("Number introduced: {}", 6).unwrap();
            n_introduced = n_introduced + 1;
        }
        row2.set_low().unwrap();
        // Scan n7 n8 and n9
        row3.set_high().unwrap();
        if col1.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 7;
            hprintln!("Number introduced: {}", 7).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col2.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 8;
            hprintln!("Number introduced: {}", 8).unwrap();
            n_introduced = n_introduced + 1;
        }
        if col3.is_high().unwrap() && n_introduced<4 {
            introduced_pin[n_introduced] = 9;
            hprintln!("Number introduced: {}", 9).unwrap();
            n_introduced = n_introduced + 1;
        }
        row3.set_low().unwrap();
        // Scan n0
        row4.set_high().unwrap();
        if col2.is_high().unwrap() && n_introduced<4{
            introduced_pin[n_introduced] = 0;
            hprintln!("Number introduced: {}", 0).unwrap();
            n_introduced = n_introduced + 1;
       }
        if col1.is_high().unwrap() && n_introduced>0 && n_introduced<4 { // We check the button * which delete the last digit introduced
            introduced_pin[n_introduced - 1] = 0;
            hprintln!("Last digit removed").unwrap();
            n_introduced = n_introduced - 1;
        }
       row4.set_low().unwrap();
    }
       if n_introduced == 4 { // We check if the introduced pin is correct
    //    let i: u8;
        let mut n_correct_digits:i8 = 0;
        for i in 0..introduced_pin.len() {
            if introduced_pin[i] == correct_pin[i] {
                n_correct_digits = n_correct_digits + 1;
            }
        }
        if n_correct_digits == 4 { // Correct pin
            alarm_state = false; // Change to normal mode
            redLED.set_low().unwrap(); // switch off the red led
            introduced_pin = [48u8; 4]; // Reset the introduced pin
            n_introduced = 0; // Reset the counter of introduced digits
            hprintln!("Correct pin, alarm disabled").unwrap(); // We print succeed message
        }
        else { // Incorrect pin
            introduced_pin = [48u8; 4]; // Reset the introduced pin
            n_introduced = 0; // Reset the counter of introduced digits
            hprintln!("Incorrect pin, run away bitch, police is comming").unwrap(); // We print succeed message
        }
       }
       
       }
       if alarm_state == false {
           blueLED.set_high().unwrap();
        // Scan for the activation way of the alarm (In this example the hash button)
        row4.set_high().unwrap();
        if col3.is_high().unwrap() {
            blueLED.set_low().unwrap();
            alarm_state = true;
            hprintln!("Alarm enabled").unwrap(); // Message of alarm enabled
        }
        row4.set_low().unwrap();  
       }
       
    }
}


fn sound_buzzer(buzzer: &mut PB<Output<PushPull>>) {
    buzzer.set_high().unwrap();
    delay();
    buzzer.set_low().unwrap();
    delay();
}


fn delay() {
    // We can't use `Delay`, as that requires a frequency of at least one MHz.
    // Given our clock selection, the following loop should give us a nice delay
    // when compiled in release mode.
    for _ in 0 .. 0_050 { asm::nop() }
}

