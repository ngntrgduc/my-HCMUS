import random

# Bài 1
print('Bài 1:')
def find_dominant_element(a):
    threshold = len(a) // 10
    
    count = {} # Đếm số lần xuất hiện của mỗi phần tử
    for x in a:
        if x in count:
            count[x] += 1
        else:
            count[x] = 1

    for x in count:
        if count[x] >= threshold:
            return x

    return None

def generate_array(n):
    return [random.randint(1, n//10) for _ in range(n)]

n = 100
print(f'{n = }')
a = generate_array(n)
# print(f'{a = }')
element = find_dominant_element(a)
if element:
    print(f' - Tồn tại phần tử lấn chiếm cấp độ 10 là {element}')
else:
    print(f' - Không tồn tại phần tử lấn chiếm cấp độ 10')



# Bài 2
print('Bài 2:')
def generate_incremental_array(n):
    return sorted([random.randint(1, 100) for _ in range(n)])

def merge(a, b):
    n = len(a) 
    C = []
    i, j = 0, 0
    
    while i < n and j < n:
        if a[i] <= b[j]:
            C.append(a[i])
            i += 1
        else:
            C.append(b[j])
            j += 1
    
    while i < n:
        C.append(a[i])
        i += 1
    
    while j < n:
        C.append(b[j])
        j += 1
    
    return C


n = 5
a = generate_incremental_array(n)
b = generate_incremental_array(n)
print(f'{a = }'), print(f'{b = }')
print(merge(a, b))