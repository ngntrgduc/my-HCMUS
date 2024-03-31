import numpy as np


# 1.
print('- Bai 1:')
def det(A):
	if not isinstance(A, np.ndarray):
		# convert 2D list to numpy array
		A = np.array(A)  

	if A.shape[0] != A.shape[1]:
		raise ValueError("Can't calculate determinant of non-square matrix")
	
	if A.shape[0] == 2:
		return A[0][0]*A[1][1] - A[1][0]*A[0][1]
	
	if A.shape[0] == 1:
		return A[0][0]

	determinant = 0
	for j in range(A.shape[0]):
		minor = det(np.delete(np.delete(A, 0, 0), j, 1))
		determinant += (-1)**(1+j+1) * A[0][j] * minor

	return determinant

n = np.random.randint(2, 5)
A = np.random.randint(10, size=(n, n))
# A = [[1, 2, 0],
#      [2, 4, 6],
#      [4, 0, 1]]

print('A = ')
print(A)
print(f'det(A) = {det(A)}')
print(f'np.linalg.det(A) = {np.linalg.det(A)}')

# Recheck
if det(A) == np.round(np.linalg.det(A)):
	print('Ket qua dung voi ham det() cua Numpy trong Python')
else:
	print('Ket qua khong dung voi ham det() cua Numpy trong Python')


# 2.
print('\n- Bai 2:')
def gen_symmetric_matrix(n):
	A = np.zeros((n, n))
	for i in range(n):
		for j in range(i+1):
			A[i][j] = A[j][i] = np.random.randint(10)

	# Another approach:
	# A = np.random.randint(10, size=(n, n))
	# return A + A.T
	return A

for i in range(2, 5):
	print(f'Random {i}x{i} symmetric matrix: ')
	print(gen_symmetric_matrix(i))


# 3.
print('\n- Bai 3:')
def gram_schmidt(A):
	# Gram Schmidt process (columns)
	Q = np.zeros_like(A).astype(np.float64)
	for i in range(A.shape[1]):
		v = Q[:, i] = A[:, i]
		for j in range(i):
			u = Q[:, j]
			Q[:, i] -= (np.dot(v, u)/np.dot(u, u)) * u
	
	return Q

def gen_orthonormal_matrix(n):

	# Generate random matrix with determinant != 0
	A = np.random.randint(10, size=(n, n))
	while np.linalg.det(A) == 0:
		A = np.random.randint(10, size=(n, n))
	# print(A)
	
	Q = gram_schmidt(A)

	# Orthonormalization
	for i in range(Q.shape[1]):
		Q[:, i] = Q[:, i] / np.linalg.norm(Q[:, i], 2)

	return Q

def check_orthonormal(A):
	# Check if matrix is orthonormal
	if not np.allclose(np.dot(A.T, A), np.eye(A.shape[0])):
		print('A is not an orthonormal matrix')
		return False
	else:
		for col in A.T:
			# print(np.linalg.norm(col, 2))
			if not np.allclose(np.linalg.norm(col, 2), 1):
				print('A is not an orthonormal matrix')
				return False
		print('A is an orthonormal matrix')
		return True


n = 3
print(f'Random {n}x{n} orthonormal matrix A: ')
A = gen_orthonormal_matrix(n)
# A = np.array([[0, 0, 1],
# 			 [1, 0, 0],
# 			 [0, 1, 0]])
print(A)

# Recheck
print('- Recheck: ', end='') 
check_orthonormal(A)