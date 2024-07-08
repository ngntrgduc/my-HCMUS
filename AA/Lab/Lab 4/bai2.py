import random
from time import perf_counter

print('Bài 2:')

def generate_S(N):
    return random.sample(range(1, 1001), N)

def find_k_smallest(S, k):
    return sorted(S)[k-1]


k = 5
for N in range(10, 101, 10):
    start_time = perf_counter()
    S = generate_S(N)
    stop_time = perf_counter()
    result = find_k_smallest(S, k)
    print(f'{N = }, k-smallest = {result}')
    print(f'- Average time taken: {(stop_time - start_time)/ N}s')

