import numpy as np

def cholesky(A):
    """Cholesky Factorization"""
    m, n = A.shape
    R = A.copy()
    for k in range(m):
        for j in range(k+1, m):
            R[j, j:m] -= R[k, j:m] * np.conj(R[k, j]) / R[k, k]
        R[k, k:m] /= np.sqrt(R[k, k])
    return np.triu(R).T

def generate_Hermitian_positive_definite_matrix(n=3):
    """Generate Hermitian positive definite matrix"""

    def positive_definite(A):
        """Check if matrix is positive definite"""
        return np.all(np.linalg.eigvals(A) > 0)

    def generate_symmetric_matrix(n):
        """Generate symmetric matrix"""
        A = np.zeros((n, n))
        for i in range(n):
            for j in range(i+1):
                A[i][j] = A[j][i] = np.random.randint(10)
        return A.astype(float)

    A = generate_symmetric_matrix(n)
    while not positive_definite(A):
        A = generate_symmetric_matrix(n)

    return A


np.set_printoptions(suppress=True)  # suppress small floating-point values

A = np.array([[4, 12, -16], 
              [12, 37, -43],
              [-16, -43, 98]]).astype(float)
A = generate_Hermitian_positive_definite_matrix()
print('A = '), print(A)

print('\nCholesky factorization by Cholesky Factorization algorithm 23.1:')
L = cholesky(A)
print('L = '), print(L)
print('L* = '), print(L.T)
print('LL* = '), print(L @ np.asmatrix(L).H)

print('\nCholesky factorization by function cholesky from numpy:')
L = np.linalg.cholesky(A)
print('L = '), print(L)
print('L* = '), print(L.T)
print('LL* = '), print(L @ np.asmatrix(L).H)

# Check
if np.allclose(np.linalg.cholesky(A), cholesky(A)):
    print('\n=> The result from scipy is similar to the result from algorithm 23.1')
else:
    print('\n=> The result from scipy is not similar to the result from algorithm 23.1')