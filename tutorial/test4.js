const raspi = require('raspi');
const pwm = require('raspi-soft-pwm');
 
raspi.init(() => {
  const led = new pwm.SoftPWM('GPIO18');
  
  led.write(0.5); // 50% Duty Cycle, aka half brightness
});
