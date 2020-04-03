#![no_std]
#![no_main]
#![allow(non_snake_case)] 
extern crate panic_halt;


extern crate cortex_m;
use cortex_m_rt::entry;
use stm32l0xx_hal as _;


// Peripheral addresses as constants
#[rustfmt::skip]
mod address {
    pub const RCC_IOPENR: u32 = 0x40021000 + 0x2C;
 //   pub const RCC_APB2ENR: u32 = 0x40021000 + 0x34;
    pub const GPIOA_MODER: u32 = 0x50000000 + 0x00;
  //  pub const GPIOA_PUPDR: u32 = 0x50000000 + 0x0C;
    pub const GPIOA_BSRR: u32 = 0x50000000 + 0x18;
  //  pub const GPIOA_IDR: u32 = 0x50000000 + 0x10;
    pub const GPIOB_MODER: u32 = 0x50000400 + 0x00;
    pub const GPIOB_PUPDR: u32 = 0x50000400 + 0x0C;
//    pub const GPIOB_BSRR: u32 = 0x50000400 + 0x18;
    pub const GPIOB_IDR: u32 = 0x50000400 + 0x10;

}
use address::*;

#[inline(always)]
fn read_u32(addr: u32) -> u32 {
    unsafe { core::ptr::read_volatile(addr as *const _) }
  //  core::ptr::read_volatile(addr as *const _)
}

#[inline(always)]
fn write_u32(addr: u32, val: u32) {
    unsafe {
        core::ptr::write_volatile(addr as *mut _, val);
    }
}
fn wait(i: u32) {
    for _ in 0..i {
        cortex_m::asm::nop(); // no operation (cannot be optimized out)
    }
}

#[entry]
//#[cortex_m_rt::entry]
fn main() -> ! {

    // power on clock for GPIOA
    let r = read_u32(RCC_IOPENR); // read
    write_u32(RCC_IOPENR, r | 1); // set enable
    // power on clock for GPIOB
    let r = read_u32(RCC_IOPENR);
    write_u32(RCC_IOPENR, r | (1<<1));

        // configure PA5 as output
        let r = read_u32(GPIOA_MODER) & !(0b11 << (5 * 2)); // read and mask
        write_u32(GPIOA_MODER, r | 0b01 << (5 * 2)); // set output mode
        // configure PA0 as output
        let r = read_u32(GPIOA_MODER) & !(0b11); // read and mask
        write_u32(GPIOA_MODER, r | 0b01); // set output mode
    // PA9 (OUTPUT): keyboard ROW1
        let r = read_u32(GPIOA_MODER) & !(0b11 << (9 * 2)); 
        write_u32(GPIOA_MODER, r | 0b01 << (9 * 2));
    // PA10 (OUTPUT): keyboard ROW2
        let r = read_u32(GPIOA_MODER) & !(0b11 << (10 * 2)); 
        write_u32(GPIOA_MODER, r | 0b01 << (10 * 2));
    // PA11 (OUTPUT): keyboard ROW3
        let r = read_u32(GPIOA_MODER) & !(0b11 << (11 * 2)); 
        write_u32(GPIOA_MODER, r | 0b01 << (11 * 2));
    // PA12 (OUTPUT): keyboard ROW4
        let r = read_u32(GPIOA_MODER) & !(0b11 << (12 * 2)); 
        write_u32(GPIOA_MODER, r | 0b01 << (12 * 2));
    // PB5 (INPUT): keyboard COL3
        let r = read_u32(GPIOB_MODER) & !(0b11 << (5 * 2)); 
        write_u32(GPIOB_MODER, r | 0b00 << (5 * 2));
    // PB6 (INPUT): keyboard COL2
        let r = read_u32(GPIOB_MODER) & !(0b11 << (6 * 2)); 
        write_u32(GPIOB_MODER, r | 0b00 << (6 * 2));
    // PB7 (INPUT): keyboard COL1
        let r = read_u32(GPIOB_MODER) & !(0b11 << (7 * 2)); 
        write_u32(GPIOB_MODER, r | 0b00 << (7 * 2));
// Pull down mode for inputs
    //PB5 (COL3): PULL DOWN MODE
        let r = read_u32(GPIOB_PUPDR) & !(0b11 << (5 * 2)); 
        write_u32(GPIOB_PUPDR, r | 0b10 << (5 * 2));
    //PB6 (COL2): PULL DOWN MODE
     let r = read_u32(GPIOB_PUPDR) & !(0b11 << (6 * 2)); 
        write_u32(GPIOB_PUPDR, r | 0b10 << (6 * 2));
    //PB7 (COL1): PULL DOWN MODE
     let r = read_u32(GPIOB_PUPDR) & !(0b11 << (7 * 2)); 
        write_u32(GPIOB_PUPDR, r | 0b10 << (7 * 2));
   
        loop{
            let button1: bool = check_n1();
            let button2: bool = check_n2();
            let button3: bool = check_n3();
            let button4: bool = check_n4();
            let button5: bool = check_n5();
            let button6: bool = check_n6();
            let button7: bool = check_n7();
            let button8: bool = check_n8();
            let button9: bool = check_n9();
            let buttonast: bool = check_ast();
            let button0: bool = check_n0();
            let buttonhas: bool = check_has();
            
            if button1 == true || button4 == true || button7 == true || buttonast == true {
                write_u32(GPIOA_BSRR, 1 << 5); // set bit, output hight (turn on led)
                write_u32(GPIOA_BSRR, 1);
                wait(10_000);
                write_u32(GPIOA_BSRR, 1 << (5 + 16)); // clear bit, output low (turn off led)
                write_u32(GPIOA_BSRR, 1 << (0 + 16));
                wait(10_000);
            }
            if button2 == true || button5 == true || button8 == true || button0 == true {
                write_u32(GPIOA_BSRR, 1 << 5);
                wait(10_000);
                write_u32(GPIOA_BSRR, 1 << (5 + 16));
                wait(10_000);
            }
            if button3 == true || button6 == true || button9 == true || buttonhas == true {
                write_u32(GPIOA_BSRR, 1);
                wait(10_000);
                write_u32(GPIOA_BSRR, 1 << (0 + 16));
                wait(10_000);
            }


        }
}
// SI MODIFICAS VARIABLE DECLARALA MUT... q por eso no iba
//ROW1
fn check_n1() -> bool {
    write_u32(GPIOA_BSRR, 1 << 9); // We set line 1 to high to give voltage to the col port if button is pushed
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button1: bool = false;
    if (col & 0x00000080) == 0x00000080 {  // Check if COL1 = 1 (esta a high)
         col_en = true;
    }
    if col_en == true {
        button1 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (9 + 16)); // row1 in low mode
    return button1;
}
fn check_n2() -> bool {
    write_u32(GPIOA_BSRR, 1 << 9);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button2: bool = false;
    if (col & 0x00000040) == 0x00000040 { 
         col_en = true;
    }
    if col_en == true {
        button2 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (9 + 16)); // row1 in low mode
    return button2;
}
fn check_n3() -> bool {
    write_u32(GPIOA_BSRR, 1 << 9);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button3: bool = false;
    if (col & 0x00000020) == 0x00000020 { 
         col_en = true;
    }
    if col_en == true {
        button3 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (9 + 16)); // row1 in low mode
    return button3;
}
//ROW2
fn check_n4() -> bool {
    write_u32(GPIOA_BSRR, 1 << 10);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button4: bool = false;
    if (col & 0x00000080) == 0x00000080 { 
         col_en = true;
    }
    if col_en == true {
        button4 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (10 + 16)); // row1 in low mode
    return button4;
}
fn check_n5() -> bool {
    write_u32(GPIOA_BSRR, 1 << 10);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button5: bool = false;
    if (col & 0x00000040) == 0x00000040 { 
         col_en = true;
    }
    if col_en == true {
        button5 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (10 + 16)); // row1 in low mode
    return button5;
}
fn check_n6() -> bool {
    write_u32(GPIOA_BSRR, 1 << 10);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button6: bool = false;
    if (col & 0x00000020) == 0x00000020 { 
         col_en = true;
    }
    if col_en == true {
        button6 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (10 + 16)); // row1 in low mode
    return button6;
}
//ROW3
fn check_n7() -> bool {
    write_u32(GPIOA_BSRR, 1 << 11);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button7: bool = false;
    if (col & 0x00000080) == 0x00000080 { 
         col_en = true;
    }
    if col_en == true {
        button7 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (11 + 16)); // row1 in low mode
    return button7;
}
fn check_n8() -> bool {
    write_u32(GPIOA_BSRR, 1 << 11);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button8: bool = false;
    if (col & 0x00000040) == 0x00000040 { 
         col_en = true;
    }
    if col_en == true {
        button8 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (11 + 16)); // row1 in low mode
    return button8;
}
fn check_n9() -> bool {
    write_u32(GPIOA_BSRR, 1 << 11);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button9: bool = false;
    if (col & 0x00000020) == 0x00000020 { 
         col_en = true;
    }
    if col_en == true {
        button9 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (11 + 16)); // row1 in low mode
    return button9;
}
//ROW4
fn check_ast() -> bool {
    write_u32(GPIOA_BSRR, 1 << 12);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut buttonast: bool = false;
    if (col & 0x00000080) == 0x00000080 { 
         col_en = true;
    }
    if col_en == true {
        buttonast = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (12 + 16)); // row1 in low mode
    return buttonast;
}
fn check_n0() -> bool {
    write_u32(GPIOA_BSRR, 1 << 12);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut button0: bool = false;
    if (col & 0x00000040) == 0x00000040 { 
         col_en = true;
    }
    if col_en == true {
        button0 = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (12 + 16)); // row1 in low mode
    return button0;
}
fn check_has() -> bool {
    write_u32(GPIOA_BSRR, 1 << 12);
    let col = read_u32(GPIOB_IDR);
    let mut col_en: bool = false;
    let mut buttonhas: bool = false;
    if (col & 0x00000020) == 0x00000020 { 
         col_en = true;
    }
    if col_en == true {
        buttonhas = true;      
    }
    else { 
    }
    write_u32(GPIOA_BSRR, 1 << (12 + 16)); // row1 in low mode
    return buttonhas;
}