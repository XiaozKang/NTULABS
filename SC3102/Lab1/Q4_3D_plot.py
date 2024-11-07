from mpl_toolkits.mplot3d import Axes3D  # This import is not strictly necessary with newer versions of matplotlib, but kept for compatibility
import numpy as np
import matplotlib.pyplot as plt

def fnGenComplexExp(A, w1, Phi, numSamples, stepTime):
    n = np.arange(0, numSamples, stepTime)
    y = np.multiply(np.power(A, n), np.exp(1j * (w1 * n + Phi)))
    return [n, y]

def main():
    # y[n] = Aexp(j*w1*n + Phi) = A * (cos(w1*n + Phi) + j*sin(w1*n + Phi))

    N = 16
    A = 1.0
    w1 = 2 * np.pi / N
    Phi = 0
    numSamples = N * 1

    WDT = {}
    WCT = {}
    NK = 3  # Number of different frequencies to plot
    for k in range(0, NK + 1):
        [n, y1DT] = fnGenComplexExp(A, w1 * k, Phi, numSamples, 1)
        WDT[k] = y1DT

        [t, y1CT] = fnGenComplexExp(A, w1 * k, Phi, numSamples, 1 / 100.0)
        WCT[k] = y1CT

    plt.rcParams['legend.fontsize'] = 10
    fig = plt.figure()
    ax = fig.add_subplot(111, projection='3d')  # Use add_subplot for better compatibility

    colormap = ['r', 'g', 'b', 'y', 'c', 'k']  # Color map for different plots

    for k in range(0, NK + 1):
        yCT = WCT[k]
        reValCT = yCT[0:len(y1CT)].real
        imgValCT = yCT[0:len(y1CT)].imag
        opStr = f"Complex Exponential W^k={k}"
        ax.plot(t, reValCT, imgValCT, c=colormap[k], label=opStr)

        yDT = WDT[k]
        reValDT = yDT[0:len(y1DT)].real
        imgValDT = yDT[0:len(y1DT)].imag
        ax.scatter(n, reValDT, imgValDT, c=colormap[k], marker='o')

    ax.set_xlabel('sample n')
    ax.set_ylabel('real')
    ax.set_zlabel('imag')
    ax.legend()
    plt.show()

if __name__ == '__main__':
    main()
