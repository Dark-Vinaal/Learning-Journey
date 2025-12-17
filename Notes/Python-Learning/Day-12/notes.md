# 🗓️ Day 12 — Iterative Statements (While Loop)

## 🎯 Topics Covered
- What are Iterative Statements?
- Understanding the `while` Loop
- Key Steps: 
  - 1. Initialization, 
  - 2. Condition, 
  - 3. Updating.

---

## 🔁 What are Iterative Statements?

Iterative statements are used to **repeat a block of code multiple times** based on a condition.  
In Python, we mainly use two types of loops:
- `while` loop
- `for` loop (will be covered later)

---

## 🌀 The `while` Loop

The **`while` loop** executes a block of code **as long as the given condition is True**.

### 🧠 Syntax:
```python
while condition:
    # block of code
```

---

### ⚙️ Components of a While Loop

A while loop generally has three main parts:

| Step                  | Description                                            | Example                 |
| --------------------- | ------------------------------------------------------ | ----------------------- |
| **1. Initialization** | Assign starting value to variable                      | `i = 1`                 |
| **2. Condition**      | Loop continues until condition becomes False           | `while i <= 5:`         |
| **3. Updating**       | Change variable value to move toward stopping the loop | `i = i + 1` or `i += 1` |

---

### 💻 Example — Print Numbers from 1 to 5
```python
# Initialization
i = 1

# Condition
while i <= 5:
    print(i)
    
    # Updating
    i += 1
```

### 🧠 Output:
```python
1
2
3
4
5
```

---

### ✅ Explanation:

- i starts at 1.
- The condition i <= 5 is checked each time.
- After printing, i is increased by 1.
- When i becomes 6, the condition fails, and the loop stops.

---

## ⚠️ Infinite Loop Example

If you forget to update the loop variable, it will run forever.

### 💻 Example:
```python
x = 1

while x <= 5:
    print("Infinite Loop!")
    # Missing update (x += 1)
```

### 🧾 Output:

This loop runs endlessly, because x never changes, and the condition x <= 5 is always True.

---

## 🧩 Using Break in While Loop

You can stop a loop anytime using the break statement.

### 💻 Example:
```python
i = 1

while i <= 10:
    if i == 6:
        break
    print(i)
    i += 1
```

### 🧠 Output:
```python
1
2
3
4
5
```
✅ The loop stops when i becomes 6.

---

## 🧠 Summary

| Concept        | Description                     | Example         |
| -------------- | ------------------------------- | --------------- |
| Initialization | Variable setup before loop      | `i = 1`         |
| Condition      | Checked before each iteration   | `while i <= 5:` |
| Updating       | Increment/decrement inside loop | `i += 1`        |
| Infinite Loop  | Loop without update             | `while True:`   |
| Break          | Stops loop immediately          | `break`         |

---

📘 *Next step (Day 13):*  

I’ll explore **Control Structure - Iterative Statements (for loop)**.