import sys
import time
import gpiozero
#from gpiozero import OutputDevice
from time import sleep

#################################################
# Define the PGIO pins connected to the lights.
#################################################
blue    = gpiozero.OutputDevice(5)
pink    = gpiozero.OutputDevice(6)
yellow  = gpiozero.OutputDevice(13)
orange  = gpiozero.OutputDevice(19)

ignite1 = gpiozero.OutputDevice(12)

blue.off();
pink.off();
yellow.off();
orange.off();


ignite1.off()
print("on")
sleep(1)
ignite1.on()
print("off")


delay = 0.001
for x in range(0 , 1020):

	#1
	blue.off()
	pink.off()
	yellow.off()
	orange.on()

	sleep(delay)

	#2
	blue.off()
	pink.off()
	yellow.on()
	orange.on()

	sleep(delay)
        
	#3
	blue.off()
	pink.off()
	yellow.on()
	orange.off()

	sleep(delay)

	#4
	blue.off()
	pink.on()
	yellow.on()
	orange.off()

	sleep(delay)

	#5
	blue.off()
	pink.on()
	yellow.off()
	orange.off()

	sleep(delay)

	#6
	blue.on()
	pink.on()
	yellow.off()
	orange.off()

	sleep(delay)

	#7
	blue.on()
	pink.off()
	yellow.off()
	orange.off()

	sleep(delay)

	#8
	blue.on()
	pink.off()
	yellow.off()
	orange.on()

	sleep(delay)
