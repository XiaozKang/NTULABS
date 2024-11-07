from sense_hat import SenseHat
import random
import time

sense=SenseHat()

#Exercise 5B part 1
y=(255,255,0)
b=(0,0,0)
g=(0,255,0)
sense.clear()
orientation=[0,90,180,270]
image_pixels=[
  b,b,b,b,b,b,b,b,
  b,b,b,y,b,b,b,b,
  b,b,y,y,y,b,b,b,
  b,y,b,y,b,y,b,b,
  b,b,b,y,b,b,b,b,
  b,b,b,b,y,b,b,b,
  b,b,b,y,b,b,b,b,
  b,b,b,b,b,b,b,g]
sense.set_pixels(image_pixels)

#Exercise 5B part 2
sense.clear()
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

while True:
  for i in range(len(image_pixels)):
    if image_pixels[i]==(255,255,0):
      image_pixels[i]=(0,255,0)
    elif image_pixels[i]==(0,255,0):
      image_pixels[i]=(255,255,0)
    else:
      continue
  time.sleep(1)
  sense.set_pixels(image_pixels)
  sense.set_rotation(orientation[random.randint(0,3)])
