#include <stdio.h>
#include <fcntl.h> // For O_RDWR
#include <unistd.h> // For close(), usleep()
#include <stdlib.h> // For EXIT_SUCCESS
#include <sys/ioctl.h> // For ioctl()
#include <linux/gpio.h> // For GPIO-related structures and ioctl commands
#include <sys/stat.h> // For stat()
#include <sys/types.h> // For stat()

// Function to configure and read the push button state
int readButtonState(int fd) {

    // Push button
    struct gpiohandle_request req_PB;
    struct gpiohandle_data data_PB;

    req_PB.lines = 1;
    req_PB.lineoffsets[0] = 11;
    req_PB.flags = GPIOHANDLE_REQUEST_INPUT;

    if (ioctl(fd, GPIO_GET_LINEHANDLE_IOCTL, &req_PB) < 0) {
        perror("Failed to get line handle for button");
        close(fd);
        return EXIT_FAILURE;
    }
    if (ioctl(req_PB.fd, GPIOHANDLE_GET_LINE_VALUES_IOCTL, &data_PB) < 0) {
        perror("Failed to get line values");
        close(req_PB.fd);
        close(fd);
        return EXIT_FAILURE;
    }
    
    close(req_PB.fd);
    return data_PB.values[0];


}

int main(int argc, char *argv[])
{
    int fd0 = open("/dev/gpiochip0", O_RDWR); // Open the file descriptor
    if (fd0 < 0) {
        perror("Failed to open /dev/gpiochip0");
        return EXIT_FAILURE;
    }

    struct gpiochip_info cinfo;
    if (ioctl(fd0, GPIO_GET_CHIPINFO_IOCTL, &cinfo) < 0) {
        perror("Failed to get chip info");
        close(fd0);
        return EXIT_FAILURE;
    }
    fprintf(stdout, "GPIO chip 0: %s, \"%s\", %u lines\n", cinfo.name, cinfo.label, cinfo.lines);


    // Green and Yellow LEDs
    struct gpiohandle_request req_GY; // Green and Yellow
    struct gpiohandle_data data_GY; // For data bit

    req_GY.lines = 2; // 2 pins in this handler
    req_GY.lineoffsets[0] = 4; // Pin 4 - Green LED
    req_GY.lineoffsets[1] = 17; // Pin 17 - Yellow LED
    req_GY.flags = GPIOHANDLE_REQUEST_OUTPUT; // Set them to be output
    data_GY.values[0] = 1; // Set initial value of Green LED to High (ON)
    data_GY.values[1] = 1; // Set initial value of Yellow LED to Low (OFF)

    if (ioctl(fd0, GPIO_GET_LINEHANDLE_IOCTL, &req_GY) < 0) {
        perror("Failed to get line handle");
        close(fd0);
        return EXIT_FAILURE;
    }

    // Red LED
    struct gpiohandle_request req_Red;
    struct gpiohandle_data data_Red;


    req_Red.lines = 1;
    req_Red.lineoffsets[0] = 27; // Assuming pin 27 for the Red LED, change as needed
    req_Red.flags = GPIOHANDLE_REQUEST_OUTPUT;
    data_Red.values[0] = 0; // Red LED initially off

    if (ioctl(fd0, GPIO_GET_LINEHANDLE_IOCTL, &req_Red) < 0) {
        perror("Failed to get line handle for Red LED");
        close(fd0);
        return EXIT_FAILURE;
    }

    // Main loop
    while (1) {

        // when button is pressed, turn on green and yellow LEDs and turn off red LED
        
        if (readButtonState(fd0) == 0) {
            data_GY.values[0] = 1; // Green LED on
            data_GY.values[1] = 1; // Yellow LED on
            data_Red.values[0] = 0; // Red LED off
	    if (ioctl(req_GY.fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, &data_GY) < 0) { //To set values for green and yellow 
            	perror("Failed to set line values for Green and Yellow LEDs");
            	close(req_GY.fd);
            	close(fd0);
            	return EXIT_FAILURE;
	    }
            if (ioctl(req_Red.fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, &data_Red) < 0) {
                perror("Failed to set line values for Red LED");
                close(req_Red.fd);
                close(fd0);
                return EXIT_FAILURE;
            }
        }
	
	else {
            // blink red LED when button pressed
            data_GY.values[0] = 0; // Green LED off
            data_GY.values[1] = 0; // Yellow LED off
	    if (ioctl(req_GY.fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, &data_GY) < 0) {
            	perror("Failed to set line values for Green and Yellow LEDs");
            	close(req_GY.fd);
            	close(fd0);
            	return EXIT_FAILURE;
            }

            int i = 0;
            for (i=0; i<10; i++){
                if (ioctl(req_Red.fd, GPIOHANDLE_SET_LINE_VALUES_IOCTL, &data_Red) < 0) {
	            perror("Failed to set line values for Red LED");
        	    close(req_Red.fd);
		    close(fd0);
	            return EXIT_FAILURE;
        	}
                usleep(1000000); // Sleep for 1 sec
                data_Red.values[0] = !data_Red.values[0]; // Toggle the value
            }
        }

    }

    close(req_GY.fd);
    close(req_Red.fd);
    close(fd0);


}


