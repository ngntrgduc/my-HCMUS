import random
from time import perf_counter

def subset_sum(a, S):
    """Solve subset sum problem using dynamic programming"""
    n = len(a)
    dp = [[False] * (S+1) for _ in range(n+1)]

    for i in range(n+1):
        dp[i][0] = True
    
    for i in range(1, n+1):
        for j in range(1, S+1):
            if j < a[i-1]:
                dp[i][j] = dp[i-1][j]
            else:
                dp[i][j] = dp[i-1][j] or dp[i-1][j-a[i-1]]
    
    # If not exists any subset
    if not dp[n][S]:
        return None

    # Traceback to get the result
    result = []
    i, j = n, S
    while i > 0 and j > 0:
        if dp[i][j] and not dp[i-1][j]:
            result.append(a[i-1])
            j -= a[i-1]
        
        i -= 1

    return result

def generate_a(n):
    return sorted([random.randint(0, 500) for _ in range(n)])

S = 200
for n in range(50, 1001, 50):
    t = 0
    print(f'{n = }')
    a = generate_a(n)
    # print(a)
    tic = perf_counter()
    result = subset_sum(a, S)
    if result:
        print(f'=> Exist solution: {result}')
        print(f' - Take {(perf_counter() - tic)/n}')
    else:
        print( '=> Not exist solution')
