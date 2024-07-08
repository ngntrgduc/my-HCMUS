import numpy as np

# f(n) ~ n^alpha
# => log(f(n)) ~ alpha.log(n)
# => log(f(n)) = alpha.log(n) + b

print('Bài 1:')
a = 10
b = 1000

def check(f):
    space = np.linspace(a, b)
    alphas = np.log(f(space)) / np.log(space)

    # print(alphas[-1])
    # print(alphas)

    if alphas[-1] == np.inf:
        print(f' => Không tồn tại dạng O(n^alpha) cho f')
        return None
    else:
        print(f' => Tồn tại dạng O(n^{round(alphas[-1])}) cho f')
        return alphas[-1]

# a)
print('\nCâu a:')
def f(n):
    return n**2

check(f)

# b)
print('\nCâu b:')
def f(n):
    return n**3 + np.cos(n) * n**4

check(f)

# c)
print('\nCâu c:')
def f(n):
    return n**n

check(f)

# d)
print('\nCâu d:')
def f(n):
    return n**3 + n**2 + n + 1

check(f)
