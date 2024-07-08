from math import gcd

def EEA(u: int, v: int) -> int:
    """Extended Euclidean Algorithm"""
    u1, u2, u3 = 1, 0, u
    v1, v2, v3 = 0, 1, v
    while v3 != 0:
        q = u3 // v3
        t1, t2, t3 = u1 - q*v1, u2 - q*v2, u3 - q*v3
        u1, u2, u3 = v1, v2, v3
        v1, v2, v3 = t1, t2, t3

    # print(f'{u1}.{u} + {u2}.{v} = {u3}')
    return u1, u2, u3

u = 15
v = 26
u1, u2, u3 = EEA(u, v)
print(f'({u}, {v}) = {u3} = {u1}.{u} + {u2}.{v}')