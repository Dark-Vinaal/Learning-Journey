# code 

def constant_operation():
    x = 10 * 20

def linear_operation(n):
    total = 0
    for i in range(n):
        total += i

def quadratic_operation(n):
    total = 0
    for i in range(n):
        for j in range(n):
            total += (i + j)

def logarithmic_operation(n):
    while n > 1:
        n = n // 2

# Time Check

# O(1)
%time constant_operation()

# O(n)
%time linear_operation(10000)

# O(n²)
%time quadratic_operation(500)

# O(log n)
%time logarithmic_operation(10000)

# More accurate 

%timeit constant_operation()
%timeit linear_operation(10000)
%timeit quadratic_operation(500)
%timeit logarithmic_operation(10000)
