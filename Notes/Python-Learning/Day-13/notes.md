# 🗓️ Day 13 — Iterative Statements (For Loop)

## 🎯 Topics Covered
- What is a `for` Loop?
- Syntax of `for` Loop
- Using `range()` Function
- Iterating over Strings, Lists, and Tuples

---

## 🔁 What is a `for` Loop?

- The **`for` loop** is used when you want to **iterate (repeat)** over a sequence like a list, tuple, string, or range of numbers.
- Unlike the `while` loop (which depends on a condition), the `for` loop runs **for a specific number of iterations** or elements in a sequence.

---

## 🧠 Syntax:
```python
for variable in sequence:
    # block of code
```

### ✅ Here:

- variable → takes the value of each element from the sequence
- sequence → can be a list, tuple, string, or range()

---

## 💻 Examples — Using range()

The range() function generates a sequence of numbers.

```python
for i in range(1, 6):
    print(i)
```

## 🧠 Output:
```python
1
2
3
4
5
```

## ✅ Explanation:

- range(1, 6) → starts from 1 and stops before 6.
- The loop executes 5 times (for 1 to 5).

---

## 💻 Example 2 — Iterating Over a String
```python
for ch in "PYTHON":
    print(ch)
```

🧠 Output:
```python
P
Y
T
H
O
N
```

> ✅ The loop goes through each character of the string "PYTHON" one by one.

---

## 💻 Example 3 — Iterating Over a List
```python
fruits = ["apple", "banana", "cherry"]

for fruit in fruits:
    print(fruit)
```

## 🧠 Output:
```python
apple
banana
cherry
```

> ✅ Each element in the list fruits is printed in order.

---

## 💻 Example 4 — Using range() with Step Value

You can specify a step to skip numbers in between.
```python
for i in range(2, 11, 2):
    print(i)
```

## 🧠 Output:
```python
2
4
6
8
10
```

> ✅ The loop runs from 2 to 10 with a step of 2 (even numbers only).

---

## 🧠 Summary

| Concept                    | Description                 | Example                   |
| -------------------------- | --------------------------- | ------------------------- |
| `for` Loop                 | Iterates through a sequence | `for x in range(5):`      |
| `range(start, stop, step)` | Generates numbers           | `range(1, 10, 2)`         |
| Nested Loop                | Loop inside another loop    | `for i in... for j in...` |
| `break`                    | Stops loop immediately      | `if i==5: break`          |
| `continue`                 | Skips current iteration     | `if i==3: continue`       |
| `pass`                     | Does nothing (placeholder)  | `for i in range(5): pass` |

---

📘 *Next step (Day 14):*  

I’ll explore **Control Structure - Jumping Statements**.