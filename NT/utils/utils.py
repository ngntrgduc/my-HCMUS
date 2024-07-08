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

def is_relative_prime(a: int, b: int) -> bool:
    """Check if a and b is relative prime"""
    if math.gcd(a, b) == 1:
        return True

    return False

def factorial(n: int) -> int:
    """Return factorial of number"""
    result = 1
    for i in range(2, n+1):
        result *= i

    return result

def gcd(a: int, b: int) -> int:
    """Euclidean algorithm to find greatest common divisor"""
    while b > 0:
        remainder = a % b
        a = b
        b = remainder 
    return a

def divisors(n: int, included: bool = False) -> list[int]:
    """Return list of divisors of number"""
    if included:
        return [i for i in range(1, n+1) if n % i == 0]
    
    return [i for i in range(1, n) if n % i == 0]

if __name__ == '__main__':
    # print(factorial(10))
    print(divisors(2))
    # print(divisors(10, included=True))