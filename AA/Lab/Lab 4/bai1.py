import random
from time import perf_counter
import numpy as np

print('Bài 1:')

def generate_A(N):
    return sorted(random.sample(range(1, N*100 + 1), N))

def binary_search(A, target):
    l, r = 0, len(A)-1
    while l <= r:
        m = (l + r) // 2
        if A[m] == target:
            return m

        if A[m] > target:
            r = m - 1
        else:
            l = m + 1

    return None

T = []
# Ns = [10*i for i in range(1, 11)]
Ns = [10*i for i in range(1, 101)]
for N in Ns:
    A = generate_A(N)
    # print(A)

    x = random.choice(A)
    print(f'{N = }, {x = }', end=', ')
    tic = perf_counter()
    index = binary_search(A, x)
    T.append(perf_counter() - tic)
     
    if index:
        print(f'Founded at {index}')
    else:
        print('Not found')

