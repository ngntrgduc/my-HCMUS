import matplotlib.pyplot as plt
import random
from time import perf_counter
from math import log2

print('Bài 2a:')

def compare_time_complexity(T, bigO_line, bigO_label, title=''):
    """Vẽ đồ thị so sánh độ phức tạp thời gian thực hành và lý thuyết"""

    plt.figure(figsize=(8, 5))
    ax = plt.gca()
    ax2 = ax.twinx()
    ax.set_xlabel('N')

    line1, = ax.plot(bigO_line, label=bigO_label, color='r', ls='--', alpha=0.8)
    ax.set_ylabel('Độ phức tạp thời gian', color=line1.get_color())
    line2, = ax2.plot(T, label='T(N)', color='C0', alpha=0.8)
    ax2.set_ylabel('Thời gian thực hiện (s)', color=line2.get_color())
    ax.legend(handles=[line1, line2])

    if title:
        plt.title(title)

    plt.show()


def generate_number_as_list(N):
    """Generate number as list of digits"""
    n = []
    for _ in range(N):
        n.append(random.randint(0, 9))

    # Remove leading zero
    while n[0] == 0:
        n[0] = random.randint(0, 9)

    # n = int(''.join([str(digit) for digit in n]))  # cannot convert when the number is too large
    return n

def convert_to_list(n):
    l = []
    while n:
        l.insert(0, n % 10)
        n //= 10

    return l


def list_to_number(digits):
    number = 0
    for digit in digits:
        number = number * 10 + digit
    return number


def multiply_a(A, B):
    products = []
    trailing_zeros = 1
    for i, b in enumerate(reversed(B)):
        carry = 0
        product = []
        for a in reversed(A):
            result = b * a

            if carry:
                result += carry
                carry = 0

            if result >= 10:
                carry, result = divmod(result, 10)

            product.insert(0, result)

        if carry:
            product.insert(0, carry)

        # cannot convert when the number is too large
        # product = int(''.join([str(digit) for digit in product]))
        product = list_to_number(product)
        products.append(product * trailing_zeros)
        trailing_zeros *= 10
    return sum(products)


T_a = []
Ns_a = []
for k in range(13):
    N = 2 ** k
    Ns_a.append(N)
    A = generate_number_as_list(N)
    B = generate_number_as_list(N)

    tic = perf_counter()
    multiply_a(A, B)
    toc = perf_counter()

    duration = toc - tic
    print(f'{k = }, took {duration}s')
    T_a.append(duration)


bigO_line_a = list(map(lambda x: x**2, Ns_a))
compare_time_complexity(
    T_a, bigO_line_a, bigO_label='$O(N^2)$',
    title=f'So sánh thuật toán của câu 2a với $O(N^2)$'
)



print('Bài 2b:')
def split(n: int):
    return divmod(n, 10**(length(n)//2))

def length(n: int):
    """Return length of number"""
    l = 0
    while n:
        n //= 10
        l += 1
    return l

def multiply_b(A, B):
    """Karatsuba multiplication method"""
    N = min(length(A), length(B))
    if N <= 1:
        return A * B

    A_1, A_2 = split(A)
    B_1, B_2 = split(B)

    C = multiply_b(A_1, B_1)
    D = multiply_b(A_2, B_2)
    E = multiply_b(A_1 + A_2, B_1 + B_2) - C - D

    return C*10**N + E*10**(N//2) + D

def generate_number(N):
    """Generate number with length N"""

    n = random.randint(0, 9)
    # Avoid leading zero
    while n == 0:
        n = random.randint(0, 9)

    i = 1
    while i < N:
        n = n*10 + random.randint(0, 9)
        i += 1
    return n


T_b = []
Ns_b = []
for k in range(13):
    N = 2 ** k
    Ns_b.append(N)
    A = generate_number(N)
    B = generate_number(N)

    tic = perf_counter()
    multiply_b(A, B)
    toc = perf_counter()

    duration = toc - tic
    print(f'{k = }, took {duration}s')
    T_b.append(duration)

bigO_line_b = list(map(lambda x: x**log2(3) , Ns_b))
compare_time_complexity(
    T_b, bigO_line_b, bigO_label='$O(N^{\log{3}})$',
    title='So sánh thuật toán của câu 2b với $O(N^{\log{3}})$'
)



# So sánh 2 phương pháp
plt.figure(figsize=(12, 8))
ax = plt.gca()
ax2 = ax.twinx()
ax.set_xlabel('N')

line1, = ax.plot(bigO_line_a, label='$O(N^2)$', color='r', ls='--', alpha=0.8)
line2, = ax.plot(bigO_line_b, label='$O(N^{\log{3}})$', color='C0', ls='--', alpha=0.8)
line3, = ax2.plot(T_a, label='T(N) câu a', color='r', alpha=0.8)
line4, = ax2.plot(T_b, label='T(N) câu b', color='C0', alpha=0.8)

ax2.xaxis.set_visible(False)
ax.legend(handles=[line1, line3, line2, line4])

plt.tight_layout()
plt.suptitle(f'So sánh kết quả hai phương pháp')
plt.show()