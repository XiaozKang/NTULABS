import numpy as np
import matplotlib.pyplot as plt

#Creating a 1D array of time points from 0 to 40 seconds with a step size of 0.1 seconds
times = np.arange(0, 40, 0.1)
n_time_points = len(times)

#Creating a neural signal with impulses at 4, 10 and 20 seconds
neural_signal = np.zeros(n_time_points)
i_time_4 = int(np.where(times == 4)[0])  # index of value 4 in "times"
i_time_10 = int(np.where(times == 10)[0])
i_time_20 = int(np.where(times == 20)[0])

neural_signal[i_time_4] = 2  # An impulse with amplitude 2
neural_signal[i_time_10] = 1  # An impulse with amplitude 1
neural_signal[i_time_20] = 3 # An impulse with amplitude 3

plt.figure()
plt.plot(times, neural_signal)
plt.xlabel('time (seconds)')
plt.ylabel('neural signal')
plt.ylim(0, 3.2)
plt.title('Neural model for three impulses')



def hrf(t):
    "A hemodynamic response function"
    return t ** 8.6 * np.exp(-t / 0.547)

#Creating a time array from 0 to 20 seconds with a step size of 0.1 seconds for estimating hemodynamic response function
hrf_times = np.arange(0, 20, 0.1)
hrf_signal = hrf(hrf_times)

plt.figure()
plt.plot(hrf_times, hrf_signal)
plt.xlabel('time (seconds)')
plt.ylabel('BOLD signal')
plt.title('Estimated BOLD signal for event at time 0')



#Creating a BOLD signal with impulses at 4, 10 and 20 seconds
n_hrf_points = len(hrf_signal)
bold_signal = np.zeros(n_time_points)
bold_signal[i_time_4:i_time_4 + n_hrf_points] = hrf_signal * 2
bold_signal[i_time_10:i_time_10 + n_hrf_points] += hrf_signal * 1
bold_signal[i_time_20:i_time_20 + n_hrf_points] += hrf_signal * 3

plt.figure()
plt.plot(times, bold_signal)
plt.xlabel('time (seconds)')
plt.ylabel('bold signal')
plt.title('Output BOLD signal for three impulses')
plt.show()

