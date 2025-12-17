# 1. WAP to accept 2 numbers and also operator from user and perform mathematical calculations using conditional statements?

x = int(input("Enter the value 1: "))
y = int(input("Enter the value 2: "))
o = input("Enter your desired operator (+, -, *, /, %, **, //): ")
print()
if o == '+':
    print("Result =", x + y)
elif o == '-':
    print("Result =", x - y)
elif o == '*':
    print("Result =", x * y)
elif o == '/':
    print("Result =", x / y)
elif o == '%':
    print("Result =", x % y)
elif o == '**':
    print("Result =", x ** y)
elif o == '//':
    print("Result =", x // y)
else:
    print("Invalid operator entered!")


# 2. WAP to accept age of 4 students and display oldest one?

a = int(input("Enter the age of a :"))
i = int(input("Enter the age of i :"))
n = int(input("Enter the age of n :"))
z = int(input("Enter the age of z :"))
print()
if a > i and a > n and a > z:
    print("a is the oldest with age", a)
elif i > a and i > n and i > z:
    print("i is the oldest with age", i)
elif n > a and n > i and n > z:
    print("n is the oldest with age", n)
elif z > a and z > i and z > n:
    print("x is the oldest with age", z)
else:
    print("There is a tie or all have the same age.")