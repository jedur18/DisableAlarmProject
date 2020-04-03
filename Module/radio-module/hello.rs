//! Prints "Hello, world!" on the host console using semihosting
#![deny(unsafe_code)]
//#![deny(warnings)]
#![no_main]
#![no_std]



//use panic_halt as _;
//extern crate panic_halt;
//extern crate panic_semihosting;
use panic_semihosting as _;
use cortex_m_rt::entry;
use cortex_m_semihosting::hprintln;

#[entry]
fn main() -> ! {
    hprintln!("Hello, world!").unwrap();
  //  hprintln!("Hi I am Edu").unwrap();
    loop {
        continue;
    }
}
