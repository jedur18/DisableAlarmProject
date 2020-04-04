Project of disable Alarm is included in this repository.
All the code files are introduced in the examples folder and they have the prefix "Project" in their name.
For building the programs:
1) Open a terminal in the radio-module folder
2) Type: cargo build --example Project_file   (changing "file" for the disponible options)
For running the programs:
1) Open two terminal in the radio-module folder.
2) In the first one type: openocd -f openocd.cfg
3) In the other one type: cargo run --example Project_file    (changing "file" for the disponible options)

The available options for running are:
- Four files which have the minimun requirements:

----- Project_pwm.rs

----- Project_adc.rs

----- Project_buttons.rs

----- Project_serial.rs

- File with the logic implemented for the project:

----- Project_disAlarm.rs

----- Project_disAlarm_serial.rs

----- Project_lpdisAlarm.rs


Description of the different files:
-Project_pwm: Asigns a PWM output signal to the PA5 pin (blue led) using the timer 2.

-Project_adc: Allows to read the PA4 pin doing Analog to digital convertion. Since we do not use any analog sensor in our project the value obtained is the offset of the pins when they are in the air (wihtout anything connected)

-Project_buttons: Allows the management of 4x3 matrix keyboard. Rows are set as output while columns are input. Powering a row, the three columns can be check in order to determine if one of the buttons is pushed. To determine if a button is pushed it lights different combination of the leds. Buttons on the first col lights the two leds during a second, the buttons on the second col lights the blue led during a second and the buttons on the third col lights the red led.
Note: For this file  it has not been used the hal functions. All the configuration for the pins is done by accesing directly to the concrete registers of the core.
Pins are:

    -PA0: Red led
    
    -PA5: Blue led
    
    -PA9: Row1
    
    -PA10: Row2
    
    -PA11: Row3
    
    -PA12: Row4
    
    -PB5: Col3
    
    -PB6: Col2
    
    -PB7: Col1
    
    
-Project_serial: Implements the serial communication. tx(transmiter) is assigned to PA2 pin and rx(receiver) is assigned to PA3 pin. As we just have one device the idea is to wire PA3 and PA2 pins of de device in order to check this code. It works as follows: A message is written in tx port. Then rx port is read and the value received is printed. If no value is read it prints a warning.

-Project_disAlarm: This file include the logic for our alarm system disable. For this version its used
the two led (red:PA0 and blue:PA5), the 4x3 matrix keyboard (row1:PA9,row2:PA10,row3:PA11,row4:PA12,col1:PB7,col2:PB6,col3:PB5) and the buzzer (PB2). The logic is the following:
The system has two states: alarm_state == true (System in alarm mode); alarm_state == false (System in normal mode). Initially the system is in normal mode and has the blue led lighting.For this version as not has communication with the alarm sensor devide the trigger for changing from normal mode to alarm mode is the button hash of the keyboard (located row4col3).
Once the hash button is pushed, the system enters in alarm mode, so blue led is switch off and the red led starts to ligh. Besides the buzzer is activated producing a bip noise. Now the user has the option to introduce the pin to disable the alarm. The pin consists of 4 numbers which must be introduced correctly. The digits introduced are printed in computer screen (so this version need to be runned using the openocd). In case the four digits are correct the alarm change to normal mode, the red led is changed for the blue,the buzzer is disabled and a message is shown in the screen. In case of introducing an incorrect pint a warning is shown on the computer screen.

-Project_disAlarm_serial: This code works in the same way as Project_disAlarm with one difference. The activation of the alarm mode is caused by a '1' received in the serial port from the other device which has the pir sensor. Once the alarm is disabled we sent another '1' using the serial port in order that the other device swich off its alarm and change its state.

-Project_lpdisAlarm: This code works in the same way as Project_disAlarm but implements low power modes. In particular, it is implemented the low-power run mode. The low-power run mode will permform in the alarm_state = false (alarm disabled) where just two operations are running: ligthing the blue led and checking the hash button.












# LTU ES

This is an example of how to use radio to publish data to a central server.

An example application that uses RPC from Thingsboard to increment a counter
and publish that counter to Thingsboard is available at `src/main.rs`.

## Debug
```
openocd -f openocd.cfg
cargo run
```

## Flashing
```
cargo objcopy --release --bin comm-module -- -O binary test.bin
dfu-util --device 0483:df11 --alt 0 --dfuse-address 0x08000000:leave --download test.bin
```
