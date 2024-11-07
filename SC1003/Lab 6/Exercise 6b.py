from sense_hat import SenseHat
sense = SenseHat()
w=(255,255,255)
b=(0,0,0)

board = [[b,b,b,b,b,b,b,b], 
         [b,b,b,b,b,b,b,b],
         [b,b,b,b,b,b,b,b],
         [b,b,b,b,b,b,b,b],
         [b,b,b,b,b,b,b,b],
         [b,b,b,b,b,b,b,b],
         [b,b,b,b,b,b,b,b], 
         [b,b,b,b,b,b,b,b] ]

y=2 #y coordinate of marble
x=2 #x coordinate of marble
board[y][x]=w
board_1D = sum(board,[])
print(board_1D)
sense.set_pixels(board_1D)
