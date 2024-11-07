# plotting 3D complex plane
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt


def main():

    A = 0.98
    w1 = 2 * np.pi / 18
    Phi = np.pi / 6
    numSamples = 55
    n = np.arange(0, numSamples, 1)
    
    # Compute the complex exponential sequence
    y1 = np.multiply(np.power(A, n), np.exp(1j * (w1 * n + Phi)))

    # Plotting in 2D
    plt.figure(1)
    plt.plot(n, y1[0:numSamples].real, 'r--o', label='Real part')
    plt.plot(n, y1[0:numSamples].imag, 'g--o', label='Imaginary part')
    plt.xlabel('sample n')
    plt.ylabel('y[n]')
    plt.grid()
    plt.legend()

    # Plotting in polar coordinates
    plt.figure(2)
    for x in y1:
        plt.polar([0, np.angle(x)], [0, np.abs(x)], marker='o')

    # Plotting in 3D
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')
    reVal = y1[0:numSamples].real
    imgVal = y1[0:numSamples].imag
    ax.plot(n, reVal, imgVal, label='Complex exponential phasor')
    ax.scatter(n, reVal, imgVal, c='r', marker='o')
    ax.set_xlabel('sample n')
    ax.set_ylabel('Real')
    ax.set_zlabel('Imag')
    ax.legend()

    plt.show()

if __name__ == '__main__':
    main()
