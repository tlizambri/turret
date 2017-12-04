import sys
import gpiozero
from time import sleep
from flask import Flask
from flask import request
from flask import render_template


#################################################
# Define the FLask main loop.
#################################################
app       = Flask(__name__)


#################################################
# Define the PGIO pins connected to the lights.
#################################################
m1blue    = gpiozero.OutputDevice(5)
m1pink    = gpiozero.OutputDevice(6)
m1yellow  = gpiozero.OutputDevice(13)
m1orange  = gpiozero.OutputDevice(19)

m2blue    = gpiozero.OutputDevice(4)
m2pink    = gpiozero.OutputDevice(17)
m2yellow  = gpiozero.OutputDevice(27)
m2orange  = gpiozero.OutputDevice(22)

ignite1 = gpiozero.OutputDevice(12)

ignite1.on();
m1blue.off();
m1pink.off();
m1yellow.off();
m1orange.off();

m2blue.off();
m2pink.off();
m2yellow.off();
m2orange.off();

def light1():
	ignite1.off()
	sleep(1)
	ignite1.on()

def left():
        delay = 0.001
        step  = 102
        for x in range(0 , step):

                #8
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

                #7
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #6
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #5
                m2blue.off()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #4
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

                #3
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

               #2
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

               #1
                m2blue.off()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

def up():
        delay = 0.001
        step  = 102
        for x in range(0 , step):
                
		#8
                m1blue.on()
                m1pink.off()
                m1yellow.off()
                m1orange.on()

                sleep(delay)

		#7
                m1blue.on()
                m1pink.off()
                m1yellow.off()
                m1orange.off()

                sleep(delay)

		#6
                m1blue.on()
                m1pink.on()
                m1yellow.off()
                m1orange.off()

                sleep(delay)

		#5
                m1blue.off()
                m1pink.on()
                m1yellow.off()
                m1orange.off()

                sleep(delay)

		#4
                m1blue.off()
                m1pink.on()
                m1yellow.on()
                m1orange.off()

                sleep(delay)

                #3
                m1blue.off()
                m1pink.off()
                m1yellow.on()
                m1orange.off()

                sleep(delay)

               #2
                m1blue.off()
                m1pink.off()
                m1yellow.on()
                m1orange.on()

                sleep(delay)

               #1
                m1blue.off()
                m1pink.off()
                m1yellow.off()
                m1orange.on()


def right():
        delay = 0.001
        step  = 102
        for x in range(0 , step):

                #1
                m2blue.off()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

                #2
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.on()

                sleep(delay)

                #3
                m2blue.off()
                m2pink.off()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

                #4
                m2blue.off()
                m2pink.on()
                m2yellow.on()
                m2orange.off()

                sleep(delay)

                #5
                m2blue.off()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #6
                m2blue.on()
                m2pink.on()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #7
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.off()

                sleep(delay)

                #8
                m2blue.on()
                m2pink.off()
                m2yellow.off()
                m2orange.on()

                sleep(delay)

def down():
	delay = 0.001
	step  = 102
	for x in range(0 , step):

		#1
		m1blue.off()
		m1pink.off()
		m1yellow.off()
		m1orange.on()

		sleep(delay)

		#2
		m1blue.off()
		m1pink.off()
		m1yellow.on()
		m1orange.on()

		sleep(delay)
        
		#3
		m1blue.off()
		m1pink.off()
		m1yellow.on()
		m1orange.off()

		sleep(delay)

		#4
		m1blue.off()
		m1pink.on()
		m1yellow.on()
		m1orange.off()

		sleep(delay)

		#5
		m1blue.off()
		m1pink.on()
		m1yellow.off()
		m1orange.off()

		sleep(delay)

		#6
		m1blue.on()
		m1pink.on()
		m1yellow.off()
		m1orange.off()

		sleep(delay)

		#7
		m1blue.on()
		m1pink.off()
		m1yellow.off()
		m1orange.off()

		sleep(delay)

		#8
		m1blue.on()
		m1pink.off()
		m1yellow.off()
		m1orange.on()

		sleep(delay)

runCommand = { 'up' : up,
        'down':down,
        'right':right,
        'left':left,
        'light1':light1 }

################################################
# Setup the default route.
################################################
@app.route('/')
def index():
        return render_template('index.html');

################################################
# user input
################################################
@app.route('/controlpanel')
def controlpanel():
        return render_template('control.html');

################################################
# help
################################################
@app.route('/help')
def help():
        return render_template('help.html');

###############################################
# This is the 'control' route, where the heavy
# lifting is done.
###############################################
@app.route('/control')
def control():
        ####################################################
        # Process all the command parameters from the URL.
        ####################################################
        command = request.args.get('command','left')

        runCommand[command]()

        return render_template('control.html')

#################################################################
# Start the main processing loop on port 80 in 'threaded' mode.
# This will ensure that each request is handled in its own thread.
#################################################################
if __name__ == '__main__':
    app.run(threaded=False, debug=True, host='0.0.0.0', port=80, use_reloader=False)
