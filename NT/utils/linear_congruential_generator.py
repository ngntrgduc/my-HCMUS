# def lcg(x_n, a, c, m):
#     """Linear congruential generator algorithm"""
#     new_x_n = (a*x_n + c) % m
#     return new_x_n 

# seed = 1
# a = 75
# c = 74
# m = 2**16 + 1

# assert 0 <= seed < m, 'Invalid seed, must 0 <= seed < m'
# assert 0 <= a < m, 'Invalid multiplier a, must 0 <= seed < m'
# assert 0 <= c < m, 'Invalid increment c, must 0 <= seed < m'

# x_n = lcg(seed, a, c, m)
# for _ in range(10):
#     x_n = lcg(x_n, 2, 0, 9)
#     print(x_n, end=' ')

def lcg(modulus: int, a: int, c: int, seed: int):
    """Linear congruential generator"""
    while True:
        seed = (a * seed + c) % modulus
        yield seed

from time import sleep

generator = lcg(53, 13, 0, 123)
for i, number in enumerate(generator):
    print(number, end=' ')
    sleep(0.3)