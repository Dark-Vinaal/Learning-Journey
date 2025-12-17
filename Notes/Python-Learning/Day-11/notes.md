# 🗓️ Day 11 — Control Structures in Python (Conditional Statements)

## 🎯 Topics Covered
- Introduction to Control Structures  
- `if` Statement  
- `if-else` Statement  
- `if-elif-else` Ladder  

---

## 🧠 What are Control Structures?

Control structures decide the **flow of execution** in a program based on conditions.

### In Python, the most common control structures are:

- **Conditional statements** → `if`, `elif`, `else`
- **Loops** → `for`, `while` (we’ll learn in later sessions)

---

## 🧩 1. The `if` Statement

The `if` statement checks a condition — if it’s `True`, the indented block of code executes.

### 💻 Example:
```python
age = 18

if age >= 18:
    print("You are eligible to vote.")
```

### 🧠 Output:
```python
You are eligible to vote.
```

### ✅ Explanation:

Since age >= 18 is True, Python executes the statement inside the if block.

---

## ⚖️ 2. The if-else Statement

If the condition is True, the if block executes; otherwise, the else block runs.

### 💻 Example:
```python
number = 5

if number % 2 == 0:
    print("Even Number")
else:
    print("Odd Number")
```

### 🧠 Output:
```python
Odd Number
```

### ✅ Explanation:

5 % 2 == 0 is False, so the else part executes.

---

## 🔁 3. The if-elif-else Ladder

Used when you have multiple conditions to check one after another.

### 💻 Example:

```python
marks = 75

if marks >= 90:
    print("Grade: A+")
elif marks >= 80:
    print("Grade: A")
elif marks >= 70:
    print("Grade: B")
elif marks >= 60:
    print("Grade: C")
else:
    print("Grade: Fail")
```

### 🧠 Output:

```python
Grade: B
```

### ✅ Explanation:

Python checks each condition in order until it finds one that’s True.
Here, marks >= 70 is True, so it prints “Grade: B”.

---

## 💡 Note:

- Indentation (spaces) in Python defines code blocks.
- Always keep consistent indentation (usually 4 spaces).
- You can also use logical operators (and, or, not) inside if conditions.

---

## 🧠 Summary

| Statement Type | Description                                  | Example                 |
| -------------- | -------------------------------------------- | ----------------------- |
| `if`           | Executes a block if the condition is `True`  | `if x > 0:`             |
| `if-else`      | Executes one block if True, another if False | `if x>0: ... else: ...` |
| `if-elif-else` | Checks multiple conditions in sequence       | `if... elif... else...` |

---

📘 *Next step (Day 12):*  

I’ll explore **Control Structure - Iterative Statements (while loop)**.