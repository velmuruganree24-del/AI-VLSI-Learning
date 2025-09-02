import random

def adder(a, b, cin=0):
    s = a ^ b ^ cin
    carry = (a & b) | (b & cin) | (a & cin)
    return s, carry

for _ in range(5):
    a = random.randint(0, 1)
    b = random.randint(0, 1)
    cin = random.randint(0, 1)
    s, c = adder(a, b, cin)
    print(f"a={a}, b={b}, cin={cin} -> sum={s}, carry={c}")
