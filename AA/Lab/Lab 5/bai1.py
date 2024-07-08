import numpy as np
import matplotlib.pyplot as plt
from time import perf_counter

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

def generate_matrix(n: int):
    assert n >= 2, 'n too small, n must larger than 2'
    return np.random.randint(1, 1001, size=(n, n))
    
def display(matrix):
    """Better display for matrix"""
    for row in matrix:
        print(row)

# 1
def multiply(A, B) -> list[list[int]]:
    """Matrix multiplication"""
    row_A, col_A = len(A), len(A[0])
    row_B, col_B = len(B), len(B[0])

    if col_A != row_B:
        raise ValueError('invalid dimensions, cannot multiply')

    C = [[0 for _ in range(n)] 
         for _ in range(n)]

    assignments = 1
    for i in range(row_A):
        for j in range(col_B):
            for k in range(row_B):
                assignments += 1
                C[i][j] += A[i][k] * B[k][j]
    print(f' - Assignments = {assignments}')
    return C


# 2

def split(matrix):
    n = len(matrix)
    return matrix[:n//2, :n//2], matrix[:n//2, n//2:], \
           matrix[n//2:, :n//2], matrix[n//2:, n//2:]

assignments = 0
def strassen(A, B):
    """Strassen Matrix multiplication algorithm"""
    global assignments
    if len(A) == 1:
        return A * B

    a11, a12, a21, a22 = split(A)
    b11, b12, b21, b22 = split(B)
    assignments += 2

    p1 = strassen(a11 + a22, b11 + b22)
    p2 = strassen(a21 + a22, b11)
    p3 = strassen(a11, b12 - b22)
    p4 = strassen(a22, b21 - b11)
    p5 = strassen(a11 + a12, b22)
    p6 = strassen(a21 - a11, b11 + b12)
    p7 = strassen(a12 - a22, b21 + b22)
    assignments += 7

    c11 = p1 + p4 - p5 + p7
    c12 = p3 + p5
    c21 = p2 + p4
    c22 = p1 + p3 - p2 + p6
    assignments += 4
    return np.vstack((np.hstack((c11, c12)), np.hstack((c21, c22))))

T_normal, T_strassen = [], []
Ns = []
for k in range(1, 9):
    n = 2 ** k
    Ns.append(n)
    print(f'{k = }, {n = }')
    A = generate_matrix(n)
    B = generate_matrix(n)
    # print('A = '), display(A)
    # print('B = '), display(B)
    print('Normal multiplication:')
    tic = perf_counter()
    C = multiply(A, B)
    # print(f' - Took {toc - tic}s')
    T_normal.append(perf_counter() - tic)
    # display(C)

    print('Strassen algorithm:')
    tic = perf_counter()
    assignments = 0
    C = strassen(A, B)
    print(f' - Assignments = {assignments}')
    # toc = perf_counter()
    # print(f' - Took {toc - tic}s')
    T_strassen.append(perf_counter() - tic)
    # display(C)

    print()

bigO_line_a = list(map(lambda x: x**3, Ns))
compare_time_complexity(
    T_normal, 
    bigO_line_a,
    bigO_label='$O(N^3)$',
    title=f'So sánh thuật toán của câu 1.1 với $O(N^3)$'
)

bigO_line_b = np.power(Ns, np.log2(7))
compare_time_complexity(
    T_strassen, 
    bigO_line_b,
    bigO_label='$O(N^{\log(7)})$',
    title='So sánh thuật toán Strassen của câu 1.2 với $O(N^{\log(7)})$'
)
