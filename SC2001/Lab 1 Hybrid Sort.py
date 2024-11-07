#%
import random
import time
import matplotlib.pyplot as plt

def original_merge_sort(arr):
    if len(arr) <= 1:
        return 0

    mid = len(arr) // 2
    left_half = arr[:mid]
    right_half = arr[mid:]

    comparisons = original_merge_sort(left_half) + original_merge_sort(right_half)
    comparisons += merge(arr, left_half, right_half)

    return comparisons

def hybrid_sort(arr, threshold):
    if len(arr) <= 1:
        return 0

    if len(arr) <= threshold:
        comparisons = insertion_sort(arr)
    else:
        mid = len(arr) // 2
        left_half = arr[:mid]
        right_half = arr[mid:]

        comparisons = hybrid_sort(left_half, threshold) + hybrid_sort(right_half, threshold)
        comparisons += merge(arr, left_half, right_half)

    return comparisons

def insertion_sort(arr):
    comparisons = 0
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
            comparisons += 1
        arr[j + 1] = key

    return comparisons

def merge(arr, left_half, right_half):
    i = j = k = 0
    comparisons = 0

    while i < len(left_half) and j < len(right_half):
        if left_half[i] < right_half[j]:
            arr[k] = left_half[i]
            i += 1
        else:
            arr[k] = right_half[j]
            j += 1
        k += 1
        comparisons += 1

    while i < len(left_half):
        arr[k] = left_half[i]
        i += 1
        k += 1

    while j < len(right_half):
        arr[k] = right_half[j]
        j += 1
        k += 1

    return comparisons


def generate_random_dataset(size):
    return [random.randint(1, size) for _ in range(size)]

def analyze_key_comparisons(input_size, thresholds):
    comparisons_list = []

    if not isinstance(thresholds, list):
        for size in input_size:
            dataset = generate_random_dataset(size)
            start_time = time.time()
            comparisons = hybrid_sort(dataset.copy(), thresholds)
            end_time = time.time()
            elapsed_time = end_time - start_time
            comparisons_list.append((size, comparisons, elapsed_time))
    
    else:
        for threshold in thresholds:
            dataset = generate_random_dataset(input_size)
            start_time = time.time()
            comparisons = hybrid_sort(dataset.copy(), threshold)
            end_time = time.time()
            elapsed_time = end_time - start_time
            comparisons_list.append((threshold, comparisons, elapsed_time))
    
    return comparisons_list

def analyze_time_complexity(input_size,thresholds):
    comparisons_list=[]
    for size in input_size:
        dataset=generate_random_dataset(size)
        start_time=time.time()
        comparisons=hybrid_sort(dataset.copy(),thresholds)
        end_time=time.time()
        elapsed_time_hybrid=end_time-start_time

        start_time_original=time.time()
        comparisons_original=original_merge_sort(dataset.copy())
        end_time_original=time.time()
        elapsed_time_original=end_time_original-start_time_original
        comparisons_list.append((elapsed_time_hybrid,elapsed_time_original,comparisons,comparisons_original,size))

    return comparisons_list

def plot_comparison_vs_threshold(thresholds, comparisons_list):
    thresholds = [item[0] for item in comparisons_list]
    comparisons = [item[1] for item in comparisons_list]
    
    plt.figure(figsize=(10, 6))
    plt.plot(thresholds, comparisons, marker='o', linestyle='-', color='b')
    plt.xlabel('Threshold (S)')
    plt.ylabel('Key Comparisons')
    plt.title('Key Comparisons vs. S')
    plt.grid(True)
    plt.show()

def plot_comparison_vs_input_size(input_size, comparisons_list):
    input_size = [item[0] for item in comparisons_list]
    comparisons = [item[1] for item in comparisons_list]
    
    plt.figure(figsize=(10, 6))
    plt.plot(input_size, comparisons, marker='o', linestyle='-', color='b')
    plt.xlabel('Input Size (N)')
    plt.ylabel('Key Comparisons')
    plt.title('Key Comparisons vs. Input Size(N)')
    plt.grid(True)
    plt.show()

def plot_hybrid_vs_originaltime(comparisons_list1):
    hybrid_time=[item[0] for item in comparisons_list1]
    original_time=[item[1] for item in comparisons_list1]
    input_size=[item[4] for item in comparisons_list1]

    plt.figure(figsize=(10, 6))
    plt.plot(input_size, original_time, marker='o', linestyle='-', color='b',label='original')
    plt.plot(input_size,hybrid_time,marker='o', linestyle='-', color='r',label='hybrid')
    plt.xlabel('Input Size')
    plt.ylabel('Time')
    plt.title('Input Size vs. Time (S=5)')
    plt.legend()
    plt.grid(True)
    plt.show()

def plot_hybrid_vs_originalcomparisons(comparisons_list1):
    hybrid_comparisons=[item[2] for item in comparisons_list1]
    original_comparisons=[item[3] for item in comparisons_list1]
    input_size=[item[4] for item in comparisons_list1]

    print("Original:",original_comparisons)
    print("Hybrid:",hybrid_comparisons)
    plt.figure(figsize=(10, 6))
    plt.plot(input_size, original_comparisons, marker='x', linestyle='-', color='b',label='original')
    plt.plot(input_size,hybrid_comparisons,marker='x', linestyle='-', color='r',label='hybrid')
    plt.xlabel('Input Size')
    plt.ylabel('Key Comparisons')
    plt.title('Input Size vs. Comparisons')
    plt.legend()
    plt.grid(True)
    plt.show()

if __name__ == "__main__":
    input_size = list(range(1000, 2001, 100))  # Adjust as needed
    thresholds = 5  # Adjust as needed


    comparisons_list1=analyze_time_complexity(input_size,thresholds)
    """plot_hybrid_vs_originaltime(comparisons_list1)"""
    plot_hybrid_vs_originalcomparisons(comparisons_list1)
    
    """
    comparisons_list = analyze_key_comparisons(input_size, thresholds)
    
    if not isinstance(thresholds, list): 
        plot_comparison_vs_input_size(input_size, comparisons_list)
    else:
        plot_comparison_vs_threshold(thresholds, comparisons_list)
    """

#%%