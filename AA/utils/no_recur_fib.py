for n in range(2, 10):
    n = 5
    a = 0
    b = 1
    i = 1
    # for i in range(1, n):
    while i < n:
        f = a + b
        a = b
        b = f
        i += 1
    print(f'F({n}) = {f}')


def fibonacci(n):
    fib = [0, 1]
    for i in range(2, n + 1):
        fib.append(fib[i - 1] + fib[i - 2])
    return fib[n]

# Ví dụ sử dụng
print(fibonacci(9))
