from sense_hat import SenseHat
sense = SenseHat()
from time import sleep
w=(255,255,255)
b=(0,0,0)
r=(255,0,0)
g=(0,255,0)

board = [[r,r,r,b,b,b,b,r], 
         [r,b,b,b,b,b,b,r],
         [b,b,b,b,g,r,b,r],
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
  
  
  
y=2 #y coordinate of marble
x=2 #x coordinate of marble
board[y][x]=w
board_1D = sum(board,[])
print(board_1D)
sense.set_pixels(board_1D)

game_over = False
while not game_over:
  pitch = sense.get_orientation()['pitch'] 
  roll = sense.get_orientation()['roll']
  board[y][x]=b
  x,y=move_marble(pitch,roll,x,y)
  if board[y][x]==g:
    game_over=True
    sense.show_message('yay!!',text_colour=r)
  else:
    board[y][x]=w                
    sense.set_pixels(sum(board,[])) 
    sleep(0.05)
