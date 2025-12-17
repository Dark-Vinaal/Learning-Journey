# 1. WAP to perform factorial of a number using functions(without recursion function)
# Hint: fact(0)=0, fact(1)=1, fact(2)=fact(0)+fact(1) .... fact(n)=fact(n-1)+fact(n-2)
def factorial(n):
    
    if n < 0:
        return "Factorial not defined for negative numbers"
    if n == 0 or n == 1:
        return 1
        
    result = 1
    for i in range(2, n + 1):
        result *= i
    return result
    
num = int(input("Enter a number : "))
fact = factorial(num)
print("Factorial of ",num , "is :" , fact)


# 2. WAP to perform fibonnacci series using recursion function
def fibonacci(m):
    if m == 0:
        return 0
    elif m == 1:
        return 1
    else:
        return fibonacci(m - 1) + fibonacci(m - 2)
        
numb = int(input("Enter how many terms you want: "))
print("Fibonacci series up to ",numb , " terms :")
for j in range(numb):
    print(fibonacci(j), end=" ")