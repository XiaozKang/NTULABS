import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import scipy.fftpack    
import scipy.signal as signal
import os
                                         
###Obtain ecg sample from csv file using pandas###
os.chdir('Lab2')
dataset = pd.read_csv("ECG.csv")
y = [e for e in dataset.hart]
	
N = len(y) # Number of samplepoints
Fs = 1000 # sample spacing
T = 1.0 / Fs
x = np.linspace(0.0, N*T, N) #Compute x-axis

#Compute FFT
yf = scipy.fftpack.fft(y)
#Compute frequency x-axis
xf = np.linspace(0, int(1/(2*T)), int(N/2))

##Declare plots for time-domain and frequency-domain plots##
fig_td = plt.figure()
fig_td.suptitle('Time domain signals')  # Set figure title
fig_fd = plt.figure()
fig_fd.suptitle('Frequency domain signals')  # Set figure title
ax1 = fig_td.add_subplot(211)
ax1.set_title('Before filtering')
ax2 = fig_td.add_subplot(212)
ax2.set_title('After filtering')
ax3 = fig_fd.add_subplot(211)
ax3.set_title('Before filtering')
ax4 = fig_fd.add_subplot(212)
ax4.set_title('After filtering')     

#Plot non-filtered inputs
ax1.plot(x,y, color='r', linewidth=0.7)
ax3.plot(xf, 2.0/N * np.abs(yf[:N//2]), color='r', linewidth=0.7, label='raw')
ax3.set_ylim([0 , 0.2])

#Compute filtering co-efficients to eliminate 50hz brum noise###
b, a = signal.butter(4, 50/(Fs/2), 'low')

#Compute filtered signal
y_filt = signal.filtfilt(b,a, y)
yff = scipy.fftpack.fft(y_filt)

#Plot filtered outputs
ax4.plot(xf, 2.0/N * np.abs(yff[:N//2]), color='g', linewidth=0.7)
ax4.set_ylim([0 , 0.2])
ax2.plot(x,y_filt, color='g', linewidth=0.7);
plt.show()

