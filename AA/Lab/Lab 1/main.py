# Bài 1.1
print('Bài 1.1')
def binary(n: int) -> str:
    """Convert decimal number to base 2"""
    assert n >= 0, 'Number must be non-negative'
    representation = ''
    while n:
        remainder = str(n % 2)
        representation += remainder
        n //= 2
    return representation[::-1]

print(f'{binary(1) = }')
print(f'{binary(9) = }')
print(f'{binary(15) = }')
print(f'{binary(100) = }')
print(f'{binary(255) = }')

# Bài 1.2
print('Bài 1.2')
def binary_perform(n):
    n_before = n
    assignment = 0
    comparison = 1 # Because the last comparison break the while loop
    representation = ''
    while n:
        comparison += 1
        remainder = str(n % 2)
        representation += remainder
        n //= 2
        assignment += 3
    # return representation[::-1]
    print(f'With n = {n_before}, result is {representation[::-1]}, Assignment = {assignment}, Comparison = {comparison}')
    return assignment, comparison


N = [100*i for i in range(1, 11)]
assignments, comparisons = [], []
for n in N:
    assignment, comparison = binary_perform(n)
    assignments.append(assignment)
    comparisons.append(comparison)

print(assignments)
print(comparisons)

from math import log2
import matplotlib.pyplot as plt


log2_line = list(map(lambda x: log2(x), N))
plt.plot(log2_line, label='Log2N')
plt.plot(assignments, label='Gan(N)')
plt.plot(comparisons, label='Sosanh(N)')
plt.xlabel('N')
plt.xticks([i for i in range(10)], N)
plt.legend()
plt.show()


# Bài 2
print('Bài 2')
from random import randint

def generate_ab(k):
    a = randint(1, k)
    b = randint(1, k)
    while b == a:
        b = randint(1, k)

    if a > b:
        a, b = b, a # swap a and b if a > b

    return a, b

def generate_A(N, k):
    return [randint(1, k) for _ in range(N)]

def algorithm(A, a, b, k):
    """Algorithm return number of elements in range [a, b]"""

    count = [0] * (k + 1)
    assignment = 1
    comparison = 0

    for num in A:
        count[num] += 1
        assignment += 1

    cum_sum = [0] * (k + 1)
    cum_sum[0] = count[0]
    assignment += 2

    for i in range(1, k + 1):
        cum_sum[i] = cum_sum[i - 1] + count[i]
        assignment += 1

    result = cum_sum[b] - cum_sum[a - 1]
    # print(f'Number of elements in [{a}, {b}]: {result}')
    return assignment, comparison

# TH1
bigO_list = []
assignments = []
comparisons = []
k = 100
for N in [10*i for i in range(1, 1001)]:
    # print(f'{N = }, {k = }', end=', ')
    A = generate_A(N, k)
    a, b = generate_ab(k)
    assignment, comparison = algorithm(A, a, b, k)
    bigO = N + k
    # print(f' - {bigO = }')

    bigO_list.append(bigO)
    assignments.append(assignment)
    comparisons.append(comparison)

plt.figure(figsize=(10, 5))
plt.plot(bigO_list, label='O(N+k)')
plt.plot(assignments, label='Gan(N, k)', linestyle='dashed')
plt.plot(comparisons, label='Sosanh(N, k)')
plt.xlabel('N')
plt.legend()
plt.title('Trường hợp 1: k cố định = 100')
plt.show()

# TH2
bigO_list = []
assignments = []
comparisons = []
N = 20000
for k in [10*i for i in range(1, 1001)]:
    A = generate_A(N, k)
    a, b = generate_ab(k)
    assignment, comparison = algorithm(A, a, b, k)
    bigO = N + k
    bigO_list.append(bigO)
    assignments.append(assignment)
    comparisons.append(comparison)

plt.figure(figsize=(10, 5))
plt.plot(bigO_list, label='O(N+k)')
plt.plot(assignments, label='Gan(N, k)', linestyle='dashed')
plt.plot(comparisons, label='Sosanh(N, k)')
plt.xlabel('k')
plt.legend()
plt.title('Trường hợp 2: N cố định = 20000')
plt.show()
