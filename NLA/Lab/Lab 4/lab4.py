import numpy as np

def mgs(A):
    """Modified Gram-Schmidt"""
    m, n = A.shape
    Q = np.zeros((m, n))
    R = np.zeros((n, n))
    V = A.copy().astype(np.float64)

    for i in range(n):
        R[i, i] = np.linalg.norm(V[:, i], 2)
        Q[:, i] = V[:, i] / R[i, i]

        for j in range(i+1, n):
            R[i, j] = np.dot(Q[:, i].T, V[:, j])
            V[:, j] = V[:, j] - np.dot(R[i, j], Q[:, i])
        
    return Q, R


# a = np.random.randint(1, 10, (3,3))
# a = np.array([[1, 2], [0, 1], [1, 0]])
a = np.array([[1, 0], [0, 1], [1, 0]])
# a = np.array([[3, 2], [1, 2]])
print('A = '), print(a)

q, r = mgs(a)
print('After Modified Gram-Schmidt:')
print('Q = '), print(q)
print('R = '), print(r)