## Day 22 – Generator Functions, iter(), next(), Recursion & Lambda

## 🎯 Topics Covered

- Functions
  - Generator functions
  - `iter()` & `next()`
  - Recrsive functons
  - lambda functions
  
---

## 1. Generator Functions

- A generator function is a special type of function that returns values one at a time using the yield keyword.
- They do not store all values in memory.
- They generate values on the fly → memory efficient.

### Example:
```python
def count_numbers():
    n = 1
    while n <= 5:
        yield n
        n += 1

gen = count_numbers()
print(next(gen))
print(next(gen))
```

### Output:
```python
1
2
```

---

## 2. iter() Function

- The `iter()` function converts an iterable (list, tuple, string, etc.) into an iterator.

### Example:
```python
numbers = [10, 20, 30]
it = iter(numbers)

print(next(it))
print(next(it))
```

### Output:
```python
10
20
```

---

## 3. next() Function

- `next()` retrieves the next element from an iterator.

### Example:
```python
name = "DarkAI"
i = iter(name)

print(next(i))
print(next(i))
```

### Output:
```python
D
a
```

> If iterator ends, Python raises StopIteration.

---

## 4. Recursive Function

- A recursive function is a function that calls itself.

#### Used for:

- factorial
- fibonacci
- tree traversal
- mathematical sequence problems

### Example: factorial using recursion
```python
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n - 1)

print(factorial(5))
```

### Output:
```python
120
```

---

### 5. Lambda Function

- A lambda function is a small, anonymous function written in one line.

### Syntax:
```python
lambda arguments: expression
```

### Example:
```python
square = lambda x: x * x
print(square(6))
```

### Output:
```python
36
```

#### With multiple arguments:
```python
add = lambda a, b: a + b
print(add(10, 20))
```

---

## 📘 *Next step (Day 23):*  

I’ll explore **File Handling**.