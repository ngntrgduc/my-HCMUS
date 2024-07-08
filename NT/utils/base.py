"""Number base utils"""

def bin_to_dec(n: int) -> int:
    """Convert binary number to decimal base"""
    coefs = [2**i for i in range(len(str(n)))][::-1]
    return sum([coef * int(number)
                for coef, number in zip(coefs, str(n))])

def convert(n: int, base: int) -> str:
    """Convert decimal number (base 10) to base from 2 to 16"""
    assert n >= 0, 'Number must be non-negative'
    assert 2<= base <= 16, 'Invalid base, must satisfy: 2 <= base <= 16'
    representation = ''
    lookup = '0123456789ABCDEF'
    while n:
        remainder = int(n % base)
        representation += lookup[remainder]
        n //= base
    return representation[::-1]

def convert_to_dec(n: int | str, base: int) -> int:
    """Convert number to decimal base"""
    coefs = [base**i for i in range(len(str(n)))][::-1]
    if base == 16 and type(n) is str:
        lookup = {char: i for i, char in enumerate('0123456789ABCDEF')}
        return sum([coef * lookup[number]
                    for coef, number in zip(coefs, n)])

    return sum([coef * int(number)
                for coef, number in zip(coefs, str(n))])

if __name__ == '__main__':
    # a = convert_to_dec('AB6C7D', 16)
    # a = convert_to_dec(2024, 5)
    # print(a)
    print(convert(10042024, 6))
