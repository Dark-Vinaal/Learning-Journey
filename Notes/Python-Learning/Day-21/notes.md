# Day 21 – Functions and Arguments in Python

## 🎯 Topics Covered

- Functions
  - call a function
- Parameters
- Arguments
  - Positional Arguments
  - Default Arguments
  - Keyword Arguments
  - Arbitrary Arguments
- return statement

---

## 🔹 What is a Function?

- A function is a block of reusable code that performs a specific task.
It helps make programs more modular, readable, and reduces repetition.

### Syntax:
```python
def function_name(parameters):
    # block of code
    return value
```

### Example:
```python
def greet():
    print("Hello, welcome to Python learning!")
```

#### To call the function:

`greet()`

---

### 🔹 Why Use Functions?

- Increases code reusability.
- Makes code modular and organized.
- Easy to debug and maintain.
- Avoids repetition of logic.

---

##  Parameters

- Parameters are variables written inside the function definition.
- They act as placeholders for the values the function will receive.
- Parameters exist only when you define a function.

### Example:
```python
def add(a, b):   # a and b are PARAMETERS
    return a + b
```

#### Here:

> a → parameter    
> b → parameter

---

## Arguments

- Arguments are the actual values you pass into a function when calling it.
- They replace the parameters during the function call.

### Example:
```python
add(5, 10)   # 5 and 10 are ARGUMENTS
```

#### Here:

> 5 → argument    
> 10 → argument

---

### Simple Difference Table

| Term          | Meaning                        | Appears In          | Example         |
| ------------- | ------------------------------ | ------------------- | --------------- |
| **Parameter** | Placeholder variable           | Function definition | `def add(a, b)` |
| **Argument**  | Actual value given to function | Function call       | `add(5, 10)`    |

---

## Types of Arguments in Python Functions

- Python supports multiple types of arguments to make functions flexible and powerful.

---

### 1. Positional Arguments

- Arguments passed in the same order as defined in the function.
```python
def student(name, age):
    print("Name:", name)
    print("Age:", age)

student("Vinaal", 21)
```

### Output:
```python
Name: Vinaal
Age: 21
```

> ⚠️ The order matters — if you swap them, values will mismatch.

---

### 2. Default Arguments

- A parameter can have a default value which is used if no argument is provided.
```python
def greet(name="User"):
    print("Hello,", name)

greet("Dark AI")
greet()
```

### Output:
```python
Hello, Dark AI
Hello, User
```

---

### 3. Keyword Arguments

- You can specify arguments by their parameter names, regardless of order.
```python
def display(name, age):
    print(f"Name: {name}, Age: {age}")

display(age=22, name="TechnoSport")
```

### Output:
```python
Name: TechnoSport, Age: 22
```

---

### 4. Variable-Length (Arbitrary) Arguments

- When you don’t know how many arguments will be passed, use:
- *args → for non-keyworded variable arguments (tuple)

#### Using *args
```python
def add_numbers(*args):
    print("Numbers:", args)
    print("Sum:", sum(args))

add_numbers(10, 20, 30)
```

### Output:
```python
Numbers: (10, 20, 30)
Sum: 60
```

---

## Return Statement

- The return keyword sends a result back to the caller.
```python
def multiply(a, b):
    return a * b

result = multiply(5, 3)
print("Result:", result)
```

### Output:
```python
Result: 15
```

---

## 📘 *Next step (Day 22):*  

I’ll explore **Advanced Functions**.