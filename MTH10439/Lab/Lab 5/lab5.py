import numpy as np
import matplotlib.pyplot as plt

# 1
print('\nBài 1:')
# Generate matrix
A = [
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0],
    [0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0],
    [0,1,1,0,0,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,1,0],
    [0,1,1,0,0,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,1,0],
    [0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,1,0,0,1,1,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0,0,1,1,0,0,1,1,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,1,1,1,1,1,1,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
    [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
]

# Show image
plt.spy(A, marker='o', markersize=3)
plt.show()


# 2
print('\nBài 2:')
U, S, V = np.linalg.svd(A)

print('Singular values of A:')
print('S = '), print(S)
# S = np.diag(S)
# plt.subplot(1, 3, 1), plt.imshow(U), plt.title('U')
# plt.subplot(1, 3, 2), plt.imshow(S), plt.title('S')
# plt.subplot(1, 3, 3), plt.imshow(V), plt.title('V')
# plt.show()

plt.figure(figsize=(10, 6))
plt.subplot(2, 1, 1)
plt.plot(S, marker='o')
plt.title('plot for singular values of A')

plt.subplot(2, 1, 2)
plt.semilogy(S, marker='o')
plt.title('semilogy for singular values of A')
plt.show()

# rank = np.linalg.matrix_rank(A)   # = 10
rank = np.sum(S > 1e-10)
print(f'=> Hạng chính xác của A là {rank}')
print('=> Hạng chính xác của A là tổng số giá trị suy biến khác 0 của A')


# 3
print('\nBài 3:')
for i in range(rank):
    B_i = U[:, :i] @ np.diag(S[:i]) @ V[:i, :]
    # Vì tính chất của hàm pcolor trong Python khi vẽ ảnh sẽ làm đảo ngược ảnh
    # Nên ta dùng hàm flipud của numpy để lật ngược ảnh theo chiều dọc sao cho 
    # giống với ảnh ban đầu
    plt.pcolor(np.flipud(B_i), cmap='gray')
    plt.title(f'Rank-{i+1} approximation of A')
    plt.axis('equal')
    plt.show()
