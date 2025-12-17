## Day-27 — Errors & Exception Handling

## 1. Types of Errors

- Syntax Error
- Logical Error
- Runtime Error

---

## Syntax Error

Definition: Occurs when the code violates Python grammar rules.
- Python cannot execute the program until it's fixed.

### Missing parenthesis → Syntax Error
```python
print("Hello"
```

---

## Logical Error

Definition: Code runs successfully but produces wrong output due to wrong logic.

### Wrong logic: average formula incorrect
```python
a, b = 10, 20
avg = a + b / 2   # wrong logic
print(avg)
```

---

## Runtime Error

Definition: Error occurs while the program is running (e.g., division by zero, invalid index).
```python
num = 10 / 0   # Runtime Error: ZeroDivisionError
```

---

## 2. Exception Handling

- Exception handling prevents the program from crashing by using try, except, else, finally.

### try

- Block where you put risky code.

### except

- Used to catch the error and handle it.

```python
try:
    x = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
```

---

## else

- Executes only when no exception occurs.
```python
try:
    x = 10 / 2
except:
    print("Error happened")
else:
    print("No error, result =", x)
```

---

## finally

- Executes always, whether an exception occurs or not.
- Used for cleanup tasks (closing files, releasing resources).
```python
try:
    f = open("data.txt")
    print("File opened")
except FileNotFoundError:
    print("File not found")
else:
    print("No issues in try block")
finally:
    print("Program Ended")
```

---

## 📘 *Next step (Day 28):*  

I’ll explore **Classes & Objects, Inheritance**. 

