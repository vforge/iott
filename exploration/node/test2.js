var rpio = require('rpio');

/* Configure P11 as an output pin, setting its initial state to low */
rpio.open(11, rpio.OUTPUT, rpio.LOW);

/* Set the pin high every 10ms, and low 5ms after each transition to high */
setInterval(function() {
  rpio.write(11, rpio.HIGH);
  setTimeout(function() {
    rpio.write(11, rpio.LOW);
  }, 5);
}, 10);
