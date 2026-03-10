n = int(input("Enter a number: "))

sum = 0
a = n

while n > 0:
    m = n % 10
    sum = sum * 10 + m
    n = n // 10

if sum == a:
    print("The number is a palindrome.")
else:
    print("The number is not a palindrome.")
