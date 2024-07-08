
def f(n):
    result = 0
    while n > 0:
        result += (n % 10) ** 2
        n //= 10
    return result

n = 85
print(f'{n = }')

# Naive way
def naive(n):
    print(' - Naive way (Cách ngây thơ): ')
    sequence = []
    last_number = n
    while last_number not in sequence:
        sequence.append(last_number)
        new_number = f(last_number)
        if new_number in sequence:
            print(new_number)
            sequence.append(new_number)
            break    

        print(new_number, end=' -> ')
        last_number = new_number

    # Tìm chu kỳ tuần hoàn nhỏ nhất của dãy số
    end_value = sequence[-1]
    i = len(sequence) - 2
    while sequence[i] != end_value:
        i -= 1

    print(f'Chu kỳ tuần hoàn nhỏ nhất của dãy số là: ', end='')
    while i < len(sequence):
        print(sequence[i], end=' ')
        i += 1

naive(n)


# Tortoise and Hare Algorithm
def tortoise_hare(n):
    print('\n - Thuật toán Tortoise and Hare (rùa và thỏ):')
    slow = n
    fast = f(n)
    while fast != slow:
        slow = f(slow)
        fast = f(f(fast))

    # Tìm chu kỳ tuần hoàn nhỏ nhất của dãy số
    print(f'Chu kỳ tuần hoàn nhỏ nhất của dãy số là: ', end='')
    print(fast, end=' ')
    fast = f(slow)
    while fast != slow:
        print(fast, end=' ')
        fast = f(fast)

    print(fast)

tortoise_hare(n)
    

# More test case:
import random
for _ in range(5):
    n = random.randint(123, 1000000)
    print()
    print(f'{n = }')
    naive(n)
    tortoise_hare(n)