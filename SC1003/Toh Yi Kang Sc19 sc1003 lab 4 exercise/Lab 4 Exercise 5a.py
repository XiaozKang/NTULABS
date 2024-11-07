from sense_hat import SenseHat
import random
import time

sense=SenseHat()

red=(255, 0, 0)
blue=(0,0,255)
green=(0,255,0)
yellow=(255,255,0)

#5a part 1
sense.set_pixel(0,0,red)
sense.set_pixel(0,7,blue)
sense.set_pixel(7,0,green)
sense.set_pixel(7,7,yellow)

#5a part 2
sense.clear()
sense.set_pixel(random.randint(0,7),random.randint(0,7),red)
time.sleep(1)
sense.set_pixel(random.randint(0,7),random.randint(0,7),blue)
time.sleep(1)
sense.set_pixel(random.randint(0,7),random.randint(0,7),green)
time.sleep(1)
sense.set_pixel(random.randint(0,7),random.randint(0,7),yellow)
time.sleep(1)
