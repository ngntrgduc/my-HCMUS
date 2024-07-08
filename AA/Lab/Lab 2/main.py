import random
from time import perf_counter # perf_counter is more precise than time()
from math import log2
import matplotlib.pyplot as plt


print('Bài 1:')

def bigO(N):
    return int(N * log2(N))

def binary_search(A, target):
    l, r = 0, len(A)-1
    while l <= r:
        m = (l + r) // 2
        if A[m] == target:
            return True, m

        if A[m] > target:
            r = m - 1
        else:
            l = m + 1

    return False, -1

def algorithm(A, x):
    A = sorted(A)
    founded = False
    for i, a in enumerate(A):
        founded, j = binary_search(A, x - a)
        if founded and i != j:
            print(f'Founded ({i}, {j})')
            break;
        else:
            founded = False
    if not founded:
        print('Not found')

x = 50
T = []
Ns = [10*i for i in range(1, 101)]
bigO_line = list(map(lambda x: bigO(x), Ns))
for N in Ns:
    A = random.sample(range(1, 10001), N)
    # print(A)
    print(f'{N = }', end=', ')
    tic = perf_counter()
    algorithm(A, x)
    T.append(perf_counter() - tic)

plt.figure(figsize=(15, 5))
plt.subplot(1, 2, 1)
plt.plot(bigO_line, label='O(NlogN)', color='r', ls='--')
plt.xlabel('N')
plt.ylabel('Độ phức tạp thời gian')
plt.legend()
plt.title('Kết quả lý thuyết')

plt.subplot(1, 2, 2)
plt.plot(T, label='T(N)')
plt.xlabel('N')
plt.ylabel('Thời gian thực hiện (s)')
plt.legend()
plt.title('Kết quả thực nghiệm')

plt.suptitle(f'So sánh kết quả thực nghiệm và kết quả lý thuyết bài 1, với {x = }')
plt.show()

# Merged plots
plt.figure(figsize=(8, 5))
ax = plt.gca()
ax2 = ax.twinx()
ax.set_xlabel('N')

line1, = ax.plot(bigO_line, label='O(NlogN)', color='r', ls='--')
ax.set_ylabel('Độ phức tạp thời gian', color=line1.get_color())
line2, = ax2.plot(T, label='T(N)', color='C0')
ax2.set_ylabel('Thời gian thực hiện (s)', color=line2.get_color())
ax.legend(handles=[line1, line2])

plt.title(f'So sánh kết quả thực nghiệm và kết quả lý thuyết bài 1, với {x = }')
plt.show()




print('Bài 2 (Bonus):')

def algorithm2(A, x):
    viewed = set()
    for i in range(len(A) - 1):
        for j in range(i+1, len(A)):
            # `in` keyword with set has average time complexity O(1)
            element = x - (A[i] + A[j])
            if element in viewed:
                k = A.index(element)
                if i != j and j != k and i != k:
                    print(f'Founded ({i}, {j}, {k})')
                    return True
            viewed.add(A[i])
            viewed.add(A[j])

    return False

x = 50
# x = 500
# x = 1000
T = []
Ns = [10*i for i in range(1, 101)]
for N in Ns:
    A = random.sample(range(1, 10001), N)
    # print(A)
    print(f'{N = }', end=', ')
    tic = perf_counter()
    if not algorithm2(A, x):
        print('Not found')
    T.append(perf_counter() - tic)

plt.figure(figsize=(8, 5))
ax = plt.gca()
ax2 = ax.twinx()
ax.set_xlabel('N')

line1, = ax.plot(list(map(lambda x: x**2, Ns)), label='O(N^2)', color='r', ls='--')
ax.set_ylabel('Độ phức tạp thời gian', color=line1.get_color())
line2, = ax2.plot(T, label='T(N)', color='C0')
ax2.set_ylabel('Thời gian thực hiện (s)', color=line2.get_color())
ax.legend(handles=[line1, line2])

plt.title(f'So sánh kết quả thực nghiệm và kết quả lý thuyết bài 2, với {x = }')
plt.show()