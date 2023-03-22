import time
import board
from digitalio import DigitalInOut, Direction, Pull

revision = 0.1

# LED setup.
led = DigitalInOut(board.LED)
led.direction = Direction.OUTPUT

switch = DigitalInOut(board.D3)
switch.direction = Direction.INPUT
switch.pull = Pull.UP

relay = DigitalInOut(board.D2)
relay.direction = Direction.OUTPUT

inital_wash_time = 5 #secs
scrub_time = 20 #secs
final_wash_time = 15 #secs


print("")
print("Welcome to the Handwashing Station")
print("Rev %f" % (revision))

while True:
    # We could also do "led.value = not switch.value"!
    if switch.value:
        print("")
        print("Switch Pressed")
        print("Starting Pump")
        led.value = True
        relay.value = False
        for i in range (0,inital_wash_time):
            print("Time Remaining: %d secs" % (inital_wash_time-i))
            time.sleep(1) #wait a second

        print("")
        print("Time Up! Turning Off Pump")

        print("")
        print("Start Scrubbing! (Pump Off)")
        led.value = False
        relay.value = True

        for i in range (0,scrub_time):
            print("Time Remaining: %d secs" % (scrub_time-i))
            time.sleep(1) #wait a second

        print("")
        print("Finish that cleaning! Turning On Pump")
        led.value = True
        relay.value = False

        for i in range (0,final_wash_time):
            print("Time Remaining: %d secs" % (final_wash_time-i))
            time.sleep(1) #wait a second

        print("")
        print("All Done! Turning Off Pump")
        led.value = True
        relay.value = False


    else:
        led.value = False
        relay.value = True

    time.sleep(0.01)  # debounce delay
