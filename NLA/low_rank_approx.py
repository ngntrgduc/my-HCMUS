import numpy as np
from numpy.linalg import matrix_rank as rank

def gen_matrix(m, matrix_type='int'):
    if matrix_type != 'int':
        return np.random.random(m)
    return np.random.randint(1, 10, size=m)

def print_svd(U, S, V):
    """Print U, S, V of matrix"""

    print('SVD for A:')
    print('U ='), print(U)
    print('S ='), print(S)
    print('V ='), print(V)

# print(gen_matrix((3, 3)))

# A = np.random.randint(1, 10, size=(2,2))
A = np.array([[3, 0], [0, -2]])
# A = np.array([[3, 0], [0, -2], [1, 2]])
# A = gen_matrix((3,3))

print(A)
print(f'Matrix rank: {rank(A)}')

U, S, V = np.linalg.svd(A)
print_svd(U, S, V)


def low_rank_approximation(U, S, V, r):
    """Low-rank approximation"""
    
    assert r > 0, 'Invalid input r (rank)'

    approximation = 0
    for i in range(r):
        approximation += S[i] * np.outer(U[i], V[i])

    return approximation

r = 2
r = rank(A)
print(f'Low-rank approximation with r = {r}:')
print(low_rank_approximation(U, S, V, r))