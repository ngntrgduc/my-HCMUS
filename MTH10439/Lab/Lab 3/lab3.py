import numpy as np

# 1
print('\nBài 1:')
def classical_gram_schmidt(A, assignment=False):
    """Classical Gram-Schmidt"""

    m, n = A.shape
    Q = np.zeros((m, n))
    R = np.zeros((n, n))
    assignments = 0

    # v = np.zeros_like(a)
    for j in range(n):
        vj = A[:, j]
        assignments += 1

        for i in range(j):
            R[i, j] = np.dot(Q[:, i].T, A[:, j])
            vj = vj - np.dot(R[i, j], Q[:, i])
            assignments += 2
        
        R[j, j] = np.linalg.norm(vj, 2)
        Q[:, j] = vj / R[j, j]
        assignments += 2
        
    if assignment:
        return assignments

    return Q

m = np.random.randint(2, 5)
n = np.random.randint(2, 5)
A = np.random.randint(1, 10, size=(m, n))
# A = np.array([[1, 2], [2, 6]])
A = np.array([[3, 2], [1, 2]])
# A = np.array([[1, 2], [0, 1], [1, 0]])
print('A = '), print(A)

print('After Classical Gram-Schmidt: ')
print(classical_gram_schmidt(A))

Q, R = np.linalg.qr(A)
print('Q in QR factorization of A = '), print(Q)
# print('R = '), print(R)


# 2
print('\nBài 2:')
# def count_assignments(n):
#     """Return total assignments of Classical Gram-Schmidt process"""
#     assignments = 0
#     for j in range(n):
#         assignments += 1
#         for i in range(j):
#             assignments += 2
#         assignments += 2    
#     return assignments
# print(f'Total assignments: {count_assignments(A.shape[1])}')
assignments = classical_gram_schmidt(A, assignment=True)
print(f'Total assignments: {assignments}')


# 3 
print('\nBài 3:')

# Theo tính toán, số phép gán của thuật toán Gram-Schmidt cổ điển là:
# f(n) = n^2 + 2n
def f(n):
    return n**2 + 2*n

# Ta chọn g(n) = n^2
def g(n):
    return n**2

n0 = 1  # n0 > 0
n = 2   # n  > n0
M = 1   # M  > 0

# Ước lượng tiệm cận
# Ta cho n > n0 chạy từ 2 tới 100 để tìm M thoả |f(n)| < M|g(n)|
for n in range(2, 100):
    while np.abs(f(n)) >= M * np.abs(g(n)):
        print(f'- With n = {n}, invalid with M = {M} => Increase M to {M+1}')
        M += 1

print(f'=> n0 = {n0},  M = {M}')
print('Complexity: O(n^2)')


# n0 = 1  # n0 > 0
# n = 2   # n  > n0
# M = 1   # M  > 0
# while True:
# 	if np.abs(f(n)) < M * np.abs(g(n)):
# 		break
# 	M += 1
# print(f'=> n0 = {n0}, M = {M}')