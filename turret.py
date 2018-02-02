import sys
import gpiozero
from time import sleep
from flask import Flask
from flask import request
from flask import render_template
#####################################################
# This program is designed to power the motors and
# the relay switches as part of the bottle rocket
# SAM Turret.
#####################################################

#####################################################
# Define the FLask main loop.
#####################################################
app       = Flask(__name__)

#####################################################
# Define the PGIO pins connected to the motors.
# These pins need to be fired in a specific sequence
# to get the motor to turn with the correct speed and
# torque. Reversing the sequence will make the motor
# reverse directions.
# m1 = motor 1 for up/down controls
# m2 = motor 2 for left/right controls
#####################################################
m1blue    = gpiozero.OutputDevice(5, active_high=False, initial_value=False)
m1pink    = gpiozero.OutputDevice(6, active_high=False, initial_value=False)
m1yellow  = gpiozero.OutputDevice(13, active_high=False, initial_value=False)
m1orange  = gpiozero.OutputDevice(19, active_high=False, initial_value=False)

m2blue    = gpiozero.OutputDevice(4, active_high=False, initial_value=False)
m2pink    = gpiozero.OutputDevice(17, active_high=False, initial_value=False)
m2yellow  = gpiozero.OutputDevice(27, active_high=False, initial_value=False)
m2orange  = gpiozero.OutputDevice(22, active_high=False, initial_value=False)

####################################################
# Define the PGIO pins connected to the relay that
# powers the igniter wires.
####################################################
relaySwitch1 = gpiozero.OutputDevice(12, active_high=False, initial_value=False)
relaySwitch2 = gpiozero.OutputDevice(16, active_high=False, initial_value=False)
relaySwitch3 = gpiozero.OutputDevice(20, active_high=False, initial_value=False)
relaySwitch4 = gpiozero.OutputDevice(21, active_high=False, initial_value=False)
relaySwitch5 = gpiozero.OutputDevice(18, active_high=False, initial_value=False)
relaySwitch6 = gpiozero.OutputDevice(23, active_high=False, initial_value=False)
relaySwitch7 = gpiozero.OutputDevice(24, active_high=False, initial_value=False)
relaySwitch8 = gpiozero.OutputDevice(25, active_high=False, initial_value=False)


####################################################
# Turn on two relay switches that will supply power
# and ground through two of the terminals used to
# power the igniter coil wire.
####################################################
def pulse1and2():
	relaySwitch1.on()
	relaySwitch2.on()
	sleep(1)
	relaySwitch2.off()
	relaySwitch1.off()

def pulse2and3():
        relaySwitch2.on()
        relaySwitch3.on()
        sleep(1)
        relaySwitch3.off()
        relaySwitch2.off()

def pulse3and4():
        relaySwitch3.on()
        relaySwitch4.on()
        sleep(1)
        relaySwitch4.off()
        relaySwitch3.off()	

def pulse5and6():
        relaySwitch5.on()
        relaySwitch6.on()
        sleep(1)
        relaySwitch6.off()
        relaySwitch5.off()	

def pulse6and7():
        relaySwitch6.on()
        relaySwitch7.on()
        sleep(1)
        relaySwitch7.off()
        relaySwitch6.off()	

def pulse7and8():
        relaySwitch7.on()
        relaySwitch8.on()
        sleep(1)
        relaySwitch8.off()
        relaySwitch7.off()	

####################################################
# Each of the four wires are powering poles of the
# motor electromagnets. Pulse the poles in the
# following sequence to get the motor to turn in the
# direction you desire. The 'step' count determines
# how far the motor will move in a certain direction.
# The delay is needed to get the motor to rotate in a
# smooth fashion. Other pulse forms can be used to
# alter the motor speed/torque attributes...but change
# at your own risk (this one works well).
####################################################
def left():
        delay = 0.001
        step  = 50
        for x in range(0 , step):

                #8
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

                #7
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #6
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #5
                m2blue.on()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #4
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

                #3
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

               #2
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

               #1
                m2blue.on()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

####################################################
####################################################
def up():
        delay = 0.001
        step  = 50
        for x in range(0 , step):
                
		#8
                m1blue.off()
                m1pink.on()
                m1yellow.on()
                m1orange.off()

                sleep(delay)

		#7
                m1blue.off()
                m1pink.on()
                m1yellow.on()
                m1orange.on()

                sleep(delay)

		#6
                m1blue.off()
                m1pink.off()
                m1yellow.on()
                m1orange.on()

                sleep(delay)

		#5
                m1blue.on()
                m1pink.off()
                m1yellow.on()
                m1orange.on()

                sleep(delay)

		#4
                m1blue.on()
                m1pink.off()
                m1yellow.off()
                m1orange.on()

                sleep(delay)

                #3
                m1blue.on()
                m1pink.on()
                m1yellow.off()
                m1orange.on()

                sleep(delay)

               #2
                m1blue.on()
                m1pink.on()
                m1yellow.off()
                m1orange.off()

                sleep(delay)

               #1
                m1blue.on()
                m1pink.on()
                m1yellow.on()
                m1orange.off()

####################################################
####################################################
def right():
        delay = 0.001
        step  = 50
        for x in range(0 , step):

                #1
                m2blue.on()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

                #2
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #3
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

                #4
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

                #5
                m2blue.on()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #6
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #7
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #8
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

                sleep(delay)
####################################################
####################################################
def down():
	delay = 0.001
	step  = 50
	for x in range(0 , step):

		#1
		m1blue.on()
		m1pink.on()
		m1yellow.on()
		m1orange.off()

		sleep(delay)

		#2
		m1blue.on()
		m1pink.on()
		m1yellow.off()
		m1orange.off()

		sleep(delay)
        
		#3
		m1blue.on()
		m1pink.on()
		m1yellow.off()
		m1orange.on()

		sleep(delay)

		#4
		m1blue.on()
		m1pink.off()
		m1yellow.off()
		m1orange.on()

		sleep(delay)

		#5
		m1blue.on()
		m1pink.off()
		m1yellow.on()
		m1orange.on()

		sleep(delay)

		#6
		m1blue.off()
		m1pink.off()
		m1yellow.on()
		m1orange.on()

		sleep(delay)

		#7
		m1blue.off()
		m1pink.on()
		m1yellow.on()
		m1orange.on()

		sleep(delay)

		#8
		m1blue.off()
		m1pink.on()
		m1yellow.on()
		m1orange.off()

		sleep(delay)

####################################################
# The following key/value pair maps the function
# routine with the specific "command" value that is
# passed into the web-server as a URL parameter. This
# is used in the control() function below.
####################################################
runCommand = {
        'up' : up,
        'down':down,
        'right':right,
        'left':left,
        'ignite1':pulse1and2,
        'ignite2':pulse2and3,
        'ignite3':pulse3and4,
        'ignite4':pulse5and6,
        'ignite5':pulse6and7,
        'ignite6':pulse7and8
}

################################################
# Setup the default route for the home page
################################################
@app.route('/')
def index():
        return render_template('index.html');

################################################
# Controlpanel is the main user interface that
# provides the control action buttons to the
# user.
################################################
@app.route('/controlpanel')
def controlpanel():
        return render_template('control.html');

################################################
# help displays a simple help message.
################################################
@app.route('/help')
def help():
        return render_template('help.html');

###############################################
# This is the 'control' route, where the heavy
# lifting is done. In reality, it simply calls
# the function associated with the action that
# is being requested.
###############################################
@app.route('/control')
def control():
        ####################################################
        # Process all the command parameters from the URL.
        ####################################################
        command = request.args.get('command')

        runCommand[command]()

        return render_template('control.html')

#################################################################
# Start the main processing loop on port 80 in 'threaded' mode.
# This will ensure that each request is handled in its own thread.
#################################################################
if __name__ == '__main__':
    app.run(threaded=False, debug=True, host='0.0.0.0', port=80, use_reloader=False)
