import numpy as np

# a)
print('\na)')

def house(A):
    A = A.copy()
    m, n = A.shape
    W = np.zeros((m, n))

    for k in range(n):
        x = A[k:m, k]
        e1 = np.eye(m-k, 1).flatten()
        v = np.sign(x[0]) * np.linalg.norm(x, 2) * e1 + x
        v /= np.linalg.norm(v, 2)
        A[k:m, k:n] -= 2 * np.dot(np.outer(v, v.T), A[k:m, k:n])
        W[k:m, k] = v

    R = A[:n, :]
    return W, R


A = np.arange(1, 10).reshape((3, 3)).astype(float)
# A = np.random.randint(1, 10, size=(3,3)).astype(float)
W, R = house(A)

print('A = ')
print(A)
print('W = ')
print(W)
print('R = ')
print(R)


# b)
print('\nb)')

def Qx(W, x):
    m, n = W.shape
    for k in range(n-1, -1, -1):
        x[k:m] -= 2 * np.dot(np.outer(W[k:m,k], W[k:m,k].T), x[k:m])

    return x

def formQ(W):
    m, n = W.shape
    Q = np.eye(m)
    for k in range(m):
        Q[:, k] = Qx(W, Q[:, k])

    return Q

Q = formQ(W)
print('Q = ')
print(Q)

print('QR = ')
print(Q @ R)