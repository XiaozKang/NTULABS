import sys
import time
import random
import heapq
import networkx as nx
import numpy as np
import matplotlib.pyplot as plt 

# Function to generate a random graph
def generate_random_graph(num_vertices):
    graph = [[0 for _ in range(num_vertices)] for _ in range(num_vertices)]
    for i in range(num_vertices):
        for j in range(num_vertices):
            if i != j:
                graph[i][j] = random.randint(1, 1000)
    return graph

def generate_sparse_random_graph(num_vertices):
    graph = [[0 for _ in range(num_vertices)] for _ in range(num_vertices)]
    for i in range(num_vertices):
        k=i+1
        if k<num_vertices:
            graph[i][k] = random.randint(1, 1000)
            
    return graph


def dijkstra_adj_matrix(graph, src):
    num_vertices = len(graph)
    d = [float('inf')] * num_vertices
    pi = [None] * num_vertices
    S = [0] * num_vertices  

    d[src] = 0

    Q = list(range(num_vertices))

    while Q:
        u = None
        min_value = float('inf')  # Initialize with positive infinity or a value larger than any possible value in d

        for vertex in Q:
            if u is None or d[vertex] < min_value:
                u = vertex
                min_value = d[vertex]
        Q.remove(u)
        S[u] = 1

        for v in range(num_vertices):
            if S[v] != 1 and d[v] > d[u] + graph[u][v]:
                d[v] = d[u] + graph[u][v]

    # Build the path
    path = []
    current_vertex = num_vertices - 1  # The destination vertex
    while current_vertex is not None:
        path.insert(0, current_vertex)
        current_vertex = pi[current_vertex]

    return path, d

def dijkstra_adj_list(graph, src):
    num_vertices = len(graph)
    d = [float('inf')] * num_vertices
    pi = [None] * num_vertices
    S = [0] * num_vertices  

    d[src] = 0

    # Use a heap as the priority queue
    Q = [(0, src)]

    while Q:
        _, u = heapq.heappop(Q)  # Extract the vertex with the smallest distance
        if S[u] == 1:  # Skip if the vertex has already been processed
            continue
        S[u] = 1
        
        for v in graph[u]:
            if S[v] != 1 and d[v] > d[u] + graph[u][v]["weight"]: 
                d[v] = d[u] + graph[u][v]["weight"]
                pi[v] = u
                heapq.heappush(Q, (d[v], v))  # Add the vertex to the priority queue

    # Build the path
    path = []
    current_vertex = num_vertices - 1  # The destination vertex
    while current_vertex is not None:
        path.insert(0, current_vertex)
        current_vertex = pi[current_vertex]

    return path, d


def measure_execution_time(num_vertices):
    adjmatrix = generate_random_graph(num_vertices)
    graph = nx.from_numpy_array(np.matrix(adjmatrix), create_using=nx.DiGraph)
    start_vertex = random.randint(0, num_vertices - 1)
    adjlist = nx.to_dict_of_dicts(graph)
    sparse = generate_sparse_random_graph(num_vertices)
    sparsegraph = nx.from_numpy_array(np.matrix(sparse), create_using=nx.DiGraph)
    sparselist = nx.to_dict_of_dicts(sparsegraph)
    
    start_time = time.time()
    path1, _ = dijkstra_adj_matrix(adjmatrix, start_vertex)
    end_time = time.time()
    execution_time1 = end_time - start_time
    
    start_time2 = time.time()
    path3, _ = dijkstra_adj_list(adjlist,start_vertex)
    end_time2 = time.time()
    execution_time2 = end_time2 - start_time2

    start_time3=time.time()
    path4, _ = dijkstra_adj_matrix(sparse,start_vertex)
    end_time3=time.time()
    execution_time3 = end_time3-start_time3

    start_time4=time.time()
    path5, _ = dijkstra_adj_list(sparselist,start_vertex)
    end_time4=time.time()
    execution_time4 = end_time4 - start_time4


#    path2 = nx.dijkstra_path(graph, start_vertex, num_vertices-1)

    return execution_time1, execution_time2, execution_time3,execution_time4


def main():
    totaltime1 = 0
    totaltime2 = 0
    totaltime3 = 0
    totaltime4 = 0

    num_iterations = 0
    times1 = []
    times2 = []
    times3 = []
    times4 = []

    for num_vertices in range(100,1001,100):
        execution_time1, execution_time2, execution_time3, execution_time4 = measure_execution_time(num_vertices)
        
        totaltime1 += execution_time1
        totaltime2 += execution_time2
        totaltime3 += execution_time3
        totaltime4 += execution_time4

        num_iterations += 1

        times1.append(execution_time1)
        times2.append(execution_time2)
        times3.append(execution_time3)
        times4.append(execution_time4)

    print("Total time taken for dijkstra adjacent matrix:", totaltime1)
    print("Total time taken for dijkstra adjacent list:", totaltime2)
    print("Total time taken for sparse dijkstra adjacent matrix:", totaltime3)
    print("Total time taken for sparse dijkstra adjacent list:", totaltime4)
    print("Average time taken for dijkstra adjacent matrix:", totaltime1 / num_iterations)
    print("Average time taken for dijkstra adjacent list:", totaltime2 / num_iterations)
    print("Average time taken for sparse dijkstra adjacent matrix:", totaltime3 / num_iterations)
    print("Average time taken for sparse dijkstra adjacent list:", totaltime4 / num_iterations)

    # Plot the execution times
    """
    #Adjacent Matrix VS List Using Complete Graph
    plt.figure(figsize=(10, 5))
    plt.plot(range(100, 1001, 100), times1, label='Complete Dijkstra Adjacent Matrix')
    plt.plot(range(100, 1001, 100), times2, label='Complete Dijkstra Adjacent List')
    plt.xlabel('Number of vertices')
    plt.ylabel('Execution time (s)')
    plt.legend()
    plt.show()

    #Adjacent Matrix VS List Using Sparse Graph
    plt.figure(figsize=(10, 5))
    plt.plot(range(100, 1001, 100), times3, label='Sparse Dijkstra Adjacent Matrix')
    plt.plot(range(100, 1001, 100), times4, label='Sparse Dijkstra Adjacent List')
    plt.xlabel('Number of vertices')
    plt.ylabel('Execution time (s)')
    plt.legend()
    plt.show()
    
    
    #Adjacent Matrix Comparing with both |V| and |E|
    plt.figure(figsize=(10, 5))
    plt.plot(range(100, 1001, 100), times1, label='Complete Dijkstra Adjacent Matrix')
    plt.plot(range(100, 1001, 100), times3, label='Sparse Dijkstra Adjacent Matrix')
    plt.xlabel('Number of vertices')
    plt.ylabel('Execution time (s)')
    plt.legend()
    plt.show()
    """

    #Adjacent List Comparing with both |V| and |E|
    plt.figure(figsize=(10, 5))
    plt.plot(range(100,1001,100), times2, label='Complete Dijkstra Adjacent List')
    plt.plot(range(100,1001,100), times4, label='Sparse Dijkstra Adjacent List')
    plt.xlabel('Number of vertices')
    plt.ylabel('Execution time (s)')
    plt.legend()
    plt.show()
    

main()