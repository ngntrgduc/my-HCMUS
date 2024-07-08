def continued_fraction(nu: int, de:int) -> list[int]:
    """Return continued fraction representation"""

    result = []
    while nu and de:
        result.append(nu // de)
        nu, de = de, nu % de
    return result

print(continued_fraction(415, 93))