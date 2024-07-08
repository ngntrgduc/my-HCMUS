import numpy as np
from scipy.linalg import hessenberg

def hessenberg_form(A):
    """Householder Reduction to Hessenberg Form"""
    m, n = A.shape
    for k in range(m-2):
        x = A[k+1:m, k]
        e1 = np.zeros_like(x)
        e1[0] = 1
        
        v = np.sign(x[0]) * np.linalg.norm(x, 2) * e1 + x
        v /= np.linalg.norm(v, 2)

        A[k+1:m, k:m] -= 2 * np.dot(np.outer(v, v.T), A[k+1:m, k:m])
        A[:m, k+1:m] -= 2 * np.outer(np.dot(A[:m, k+1:m], v), v.T)
    return A

def generate_matrix(n=3):
    """Generate square matrix"""
    return np.random.randint(1, 10, (n, n)).astype(float)

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
A = generate_matrix(4)
print('A = '), print(A)

print('\nHouseholder reduction to Hessenberg form by function from scipy:')
H = hessenberg(A)
print(H)

print('\nHouseholder reduction to Hessenberg form by algorithm 26.1:')
reduced = hessenberg_form(A)
print(reduced)

# Check
if np.allclose(H, reduced):
    print('\n=> The result from scipy is similar to the result from algorithm 26.1')
else:
    print('\n=> The result from scipy is not similar to the result from algorithm 26.1')


# Bonus: Apply algorithm for Hermitian
A = generate_Hermitian_positive_definite_matrix(4)
print('\nBonus:\nWith A is Hermitian:')
print('A = '), print(A)
print(', the algorithm will reduce A to tridiagonal form:')
print(hessenberg_form(A))
