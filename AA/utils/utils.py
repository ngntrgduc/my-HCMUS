def convert_to_list(n: int):
    l = []
    while n:
        l.insert(0, n % 10)
        n //= 10

    return l