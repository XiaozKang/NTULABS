from sense_hat import SenseHat
import random
import time

sense=SenseHat()

#Exercise 5C
y=(255,255,0)
b=(0,0,0)
r=(255,0,0)
g=(0,255,0)
colours=[y,g,r]
orientation=[0,90,180,270]

image_pixels=[
  b,b,b,y,y,b,b,b,
  b,b,y,y,y,y,b,b,
  b,y,y,y,y,y,y,b,
  b,b,b,g,g,b,b,b,
  b,b,b,g,g,b,b,b,
  b,b,b,g,g,b,b,b,
  b,b,b,g,g,b,b,b,
  b,b,b,g,g,b,b,b]
sense.set_pixels(image_pixels)

sense.clear()
while True:
  for i in range(len(image_pixels)):
    if image_pixels[i] in colours:
      image_pixels[i]=colours[random.randint(0,2)]
    else:
      continue
  time.sleep(1)
  sense.set_pixels(image_pixels)
  sense.set_rotation(orientation[random.randint(0,3)])
