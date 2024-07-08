def gcd(a, b):
    """Run Euclidean algorithm to find greatest common divisor"""

    while b > 0:
        remainder = a % b
        a = b
        b = remainder 
    return a


print(gcd(252, 198))
print(gcd(34, 55))