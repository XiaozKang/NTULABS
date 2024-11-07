#Exercise 5a
from sense_hat import SenseHat
sense = SenseHat()
sense.set_rotation(180)


def get_color(color):
    keep_looping=True
    no_of_tries=1
    color_str=input("Enter the value of the " + color +\
                        " color for message (0-255): ")
    while keep_looping and no_of_tries<=2:
        if color_str.isdigit() and -1<int(color_str)<256:
            keep_looping=False
            return int(color_str)
        elif color_str.isdigit():
            color_str=input("Please enter a value between 0 and 255: ")
            no_of_tries+=1
        else:
            color_str=input("Please enter a value and not a string: ")
            no_of_tries+=1
    color_str=0
    return int(color_str)

r_int = get_color("red")
g_int = get_color("green")
b_int = get_color("blue")
msg_color = (r_int, g_int, b_int)
sense.show_message("I got it!", text_colour=msg_color)
