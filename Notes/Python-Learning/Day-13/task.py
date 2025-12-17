# 1. WAP to check whether given number is odd or even number using conditional statements? 
n = int(input("Enter a number :"))
if n % 2 == 0:
    print("EVEN")
else:
    print("ODD")


# 2. WAP to accept any 5 natural numbers from the user and display their average using "for" loop? 
sum = 0
for i in range(1, 6):
    m = int(input("Enter number : "))
    sum = sum + m
average = sum / 5
print("Average : ", average)


# 3. WAP to print numbers from 1 to 20 except 2 and 11 using "for" loop?
for j in range(1, 21):
    if j == 2 or j == 11:
        continue
    print(j)