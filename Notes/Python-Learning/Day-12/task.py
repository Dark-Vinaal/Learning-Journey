# 1. WAP to print multiplication table of any number(accept number from user) using "while" loop.
n = int(input("Enter a number: "))
print("\nMultiplication Table of ", n," is :")
print()
i = 1
while i <= 10:
    result = n * i
    print(n, " x ", i," = ", result)
    i += 1


#2. WAP to print sum of first 5 natural numbers using "for" loop?
sum = 0
for num in range(1, 6):
    sum = sum + num
print("Sum of first 5 natural numbers : ", sum)


#3. WAP to check student grades - Grade-A = Outstanding Grade-B = Excellent Grade-C = Very Good Grade-D = Good Grade-E = Satisfactory Grade-F = Fail other = Invalid
grade = input("Enter The Grade in Uppercase Alphabets (A-F) : ")
print()
if grade == "A":
    print("Outstanding")
elif grade == "B":
    print("Excellent")
elif grade == "C":
    print("Very Good")
elif grade == "D":
    print("Good")
elif grade == "E":
    print("Satisfactory")
elif grade == "F":
    print("Fail")
else:
    print("Invalid")
    print("Try Again")