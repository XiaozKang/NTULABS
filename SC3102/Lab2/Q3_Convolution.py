import numpy as np
import matplotlib.pyplot as plt

n_samples = 100

#Create a zero vector and then fill spikes
signal = np.zeros(n_samples)
#Starting from 0 to n_samples, generate 5 random integers and set them to 1
signal[np.random.randint(0 ,n_samples, 10)] = 1

#Plotting the signal
plt.figure()
plt.plot(signal, linewidth=2)
plt.xlabel('Time')
plt.ylabel('Intensity')
plt.title('Signal ')

#Create a boxcar kernel with 10 samples
kernel = np.zeros(10)
#Set the middle 6 samples to 1
kernel[2:8] = 1

#Plotting the kernel
plt.figure()
plt.plot(kernel, linewidth=2, color='red')
plt.xlabel('Time')
plt.ylabel('Intensity')
plt.title('Kernel ')

#Dot product of two arrays
# a and b are arrays of 20 random integers between 1 and 10
a = np.random.randint(1,10,20)
b = np.random.randint(1,10,20)
print('Array a: %s' % a)
print('Array b: %s' % b)
print('Dot Product: %s' % np.dot(a,b))

#Convolution of signal with kernel
#Creates a 2D NumPy array (shifted_kernel) filled with zeros, where each row is a shifted version of the kernel
shifted_kernel = np.zeros((n_samples, n_samples+len(kernel) - 1))
rev_kernel = kernel[::-1] 
for i in range(n_samples):
    shifted_kernel[i, i:i+len(kernel)] = rev_kernel

convolved_signal = np.dot(signal, shifted_kernel)

plt.figure()
plt.plot(convolved_signal, linewidth=2)
plt.ylabel('Intensity')
plt.xlabel('Time')
plt.title('Signal convolved with boxcar kernel')
plt.show()
