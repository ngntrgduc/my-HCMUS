import numpy as np
import matplotlib.pyplot as plt


# 1.
def gram_schmidt(A):
	"""Gram-schmidt process"""

	Q = np.zeros_like(A).astype(np.float64)
	for i in range(A.shape[1]):
		v = Q[:, i] = A[:, i]
		for j in range(i):
			u = Q[:, j]
			Q[:, i] -= (np.dot(v, u)/np.dot(u, u)) * u
	
	return Q

print('- Bai 1:')
A = np.array([[3, 2], [1, 2]])
# A = np.array([[1, 1], [1, 1], [0, 1]])
# A = np.array([[1, 1, 3], [1, 1, 1], [0, 1, 1]])
print('A = ')
print(A)
print('After Gram-schmidt process: ')
print(gram_schmidt(A))


# 2.
print('\n- Bai 2:')
A = np.array([[3, 0], [0, -2]])
# A = np.array([[1, 2], [0, 1]])
# A = np.array([[1, 3], [4, 2]])/4
print('A = ')
print(A)

## 2.a
print('\n- Bai 2a:')
U, S, V = np.linalg.svd(A)
print('SVD for A:')
print('U ='), print(U)
print('S ='), print(S)
print('V ='), print(V)

# Drawing function
def draw(vectors, vectors_type, color='red'):
	"""Function draw vectors"""

	plt.grid('k-', linewidth = 0.4)
	plt.axis('equal')

	for i, vector in enumerate(vectors):
		plt.arrow(
			0, 0, vector[0], vector[1], color=color,
			head_width=0.05, head_length=0.05, length_includes_head=True,
		)
		
		# Annotation
		if vectors_type == 'right':	
			plt.text(
				vector[0]*2/3 + 0.05, vector[1]*2/3 + 0.05, \
				f'$v_{i+1}$', color=color
			)
		else:
			plt.text(
				vector[0]*2/3 + 0.05, vector[1]*2/3 + 0.05, \
				f'$\sigma_{i+1} u_{i+1} $', color=color
			)

## 2.b
print('\n- Bai 2b:')
def draw_right_singular(vectors, title='', show=True, color='blue'):
	"""Draw right singular vectors"""

	draw(vectors, vectors_type='right', color=color)

	theta = np.linspace(0, 2*np.pi, 200)
	circle = [np.cos(theta), np.sin(theta)]
	plt.plot(circle[0], circle[1], color=color, linewidth=1)
	plt.title(title)
	if show:
		plt.show()

draw_right_singular(V, title='Right singular vectors V')


## 2.c
print('\n- Bai 2c:')
def draw_left_singular(vectors, S, title='', show=True, color='red'):
	"""Draw left singular vectors"""
	
	scaled = [S[i] * vectors[:, i] for i in range(vectors.shape[0])]
	draw(scaled, vectors_type='left', color=color)
	
	theta = np.linspace(0, 2*np.pi, 200)
	circle = [np.cos(theta), np.sin(theta)]
	transformed_circle = np.dot(U, np.dot(np.diag(S), np.dot(V, circle)))
	plt.plot(
		transformed_circle[0], transformed_circle[1], color=color, linewidth=1
	)
	plt.title(title)
	if show:
		plt.show()

draw_left_singular(U, S, title='Left singular vectors U')


# Bonus
def draw_both(overlay=False):
	"""Function draw both left singular vectors and right singular vectors"""

	if not overlay:
		plt.subplot(1, 2, 1)
		draw_right_singular(V, title='S', show=False)	
		plt.subplot(1, 2, 2)
		draw_left_singular(U, S, title='AS', show=False)
		plt.gcf().suptitle('Left singular vectors and right singular vectors in 2 subplots')
	else: 
		draw_right_singular(V, title='S', show=False)	
		draw_left_singular(U, S, title='AS', show=False)
		plt.gcf().suptitle('Left singular vectors and right singular vectors in 1 plot')

	plt.tight_layout()
	plt.show()

# Draw left singular vectors and right singular vectors on 2 plots
draw_both()

# Draw both left singular vectors and right singular vectors on 1 plot
draw_both(overlay=True)