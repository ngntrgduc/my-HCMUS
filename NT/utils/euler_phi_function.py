import math

def is_prime(n):
    """Check if n is a prime"""
    if n < 2 or (n % 2 == 0 and n != 2):
        return False

    i = 2
    while i < math.floor(math.sqrt(n))+1:
        if n % i == 0:
            return False
        i += 1

    return True

def is_relative_prime(a, b):
    if math.gcd(a, b) == 1:
        return True

    return False

def phi(n):
    totatives = 0
    for i in range(1, n+1):
        if is_relative_prime(i, n):
            totatives += 1
    return totatives

def euler_phi(n):
    """Using Euler's product fomula"""
    ps = [p for p in range(2, n) 
          if is_prime(p) and n % p == 0]
    result = n
    for p in ps:
        result *= (1 - 1/p)

    return int(result)

# print(phi(900))
# print(euler_phi(900))
print(is_prime(2))