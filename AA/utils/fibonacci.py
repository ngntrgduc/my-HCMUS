def fib(n):
    cnt = 2
    list = [0, 1]
    while cnt != n:
        list.append(list[-1] + list[-2])
        # Golden ratio: 1.618
        # print(f'Ratio: {list[-1]/list[-2]}')
        cnt += 1
    print(list)
    return list[-1]

print(fib(20))
