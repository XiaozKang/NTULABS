from sense_hat import SenseHat
sense = SenseHat()
from time import sleep
import random
w=(255,255,255)
b=(0,0,0)
r=(255,0,0)
g=(0,255,0)

board = [[r,r,r,b,b,b,b,r], 
         [r,b,b,b,b,b,b,r],
         [b,b,b,b,b,r,b,r],
         [b,r,r,b,r,r,b,r],
         [b,b,b,b,b,b,b,b],
         [b,r,b,r,r,b,b,b],
         [b,b,b,r,b,b,b,r], 
         [r,r,b,b,b,r,r,r] ]

def check_wall(x,y,new_x,new_y): 
    if board[new_y][new_x] != r: 
      return new_x, new_y 
    elif board[new_y][x] != r: 
      return x, new_y 
    elif board[y][new_x] != r:
      return new_x, y 
    else:
      return x,y

def move_marble(pitch,roll,x,y): 
  new_x = x    #assume no change to start with
  new_y = y    #assume no change to start with
  if 1 < pitch < 179 and x != 0: 
    new_x -= 1    # move left
  elif 359 > pitch > 179 and x != 7: 
    new_x += 1    # move right
    
  if 1 < roll < 179 and y != 7: 
    new_y += 1    # move up
  elif 359 > roll > 179 and y != 0: 
    new_y -= 1    # move down
  new_x, new_y = check_wall(x,y,new_x,new_y)
  return new_x, new_y

def check_wall_1(x1,y1,new_x1,new_y1): 
    if board[new_y1][new_x1] !=r:
      return new_x1, new_y1 
    elif board[new_y1][x1] !=r:
      return x1, new_y1 
    elif board[y1][new_x1] !=r:
      return new_x1, y1 
    else:
      move_target(x1,y1)
  
def move_target(x1,y1):
  new_x1=x1
  new_y1=y1
  while True:
      new_x1=random.randint(0,7)
      new_y1=random.randint(0,7)
      if board[new_y1][new_x1] !=r and board[new_y1][new_x1]!=w:
          break
  return new_x1, new_y1
  
  
y=2 #y coordinate of marble
x=2 #x coordinate of marble
y1=0 #y coordinate of target
x1=7 #x coordinate of target
board[y][x]=w
board[y1][x1]=g
board_1D = sum(board,[])
print(board_1D)
sense.set_pixels(board_1D)

game_over = False
counter=0
while not game_over:
  pitch = sense.get_orientation()['pitch'] 
  roll = sense.get_orientation()['roll']
  board[y][x]=b
  x,y=move_marble(pitch,roll,x,y)

  if board[y][x]==g:
    game_over=True
    sense.show_message('yay!!',text_colour=r)
  else:
    if counter==200:
        board[y1][x1]=b
        x1,y1=move_target(x1,y1)
        board[y1][x1]=g
        sense.set_pixels(sum(board,[]))
    board[y][x]=w                
    sense.set_pixels(sum(board,[])) 
    sleep(0.05)
    counter+=1
    
