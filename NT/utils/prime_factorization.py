from math import floor, sqrt

def is_prime(n):
    """Check if n is a prime"""
    if n < 2 or (n % 2 == 0 and n != 2):
        return False

    i = 2
    while i < floor(sqrt(n))+1:
        if n % i == 0:
            return False
        i += 1

    return True

def factorization(n):
    """Prime factorization for n"""
    i = 2
    while n != 1:
        if is_prime(i):
            if n % i == 0:
                print(i, end='.')
                n /= i
            else:
                i += 1
        else:
            i += 1


# factorization(8146798528947)
# print(is_prime(1001))

print(8146798528947 % 17)