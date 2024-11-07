from sense_hat import SenseHat
sense = SenseHat()
from time import sleep
b=(0,255,0)
w=(255,255,255)

while True:
  pitch = sense.get_orientation()['pitch']
  roll = sense.get_orientation()['roll']
  print("pitch {0} roll {1}".format(round(pitch,0), round(roll,0)))
  sleep(0.05)
