import math

def is_prime(n: int) -> bool:
    """Check if a number is a prime"""
    if n < 2 or (n % 2 == 0 and n != 2):
        return False

    i = 2
    while i < math.floor(math.sqrt(n))+1:
        if n % i == 0:
            return False
        i += 1

    return True

def prime_factorization(n):
    print(f'{n} = ', end='')
    i = 2
    while n > 1:
        if n % i == 0:
            n //= i
            if n == 1:
                print(i)
            else:
                print(f'{i}.', end='')
        else:
            i += 1
            while not is_prime(i):
                i += 1

    return

prime_factorization(21110269)