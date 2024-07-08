def fibonacci(n):
    if n == 0:
        return 'abc'
    if n == 1:
        return 'def'
    return fibonacci(n-1) + fibonacci(n-2)

n = 4
k = 2
result = fibonacci(n)
print(f'f_{n} = {result}')
print(f"Ký tự thứ {k} của chuỗi f_{n} là '{result[k-1]}'")
