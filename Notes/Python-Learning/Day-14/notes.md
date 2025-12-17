# 🗓️ Day 13 — Jump Statements & Sequential Datatype (List)

---

## 🎯 Topics Covered

- Jump Statements: `break`, `continue`, `pass`
- Sequential Datatype: **List**
  - Indexing (Positive & Negative)
  - Accessing Elements by Position
  - Reallocating / Modifying Values

---

## 🚀 Part 1: Jump Statements

Jump statements are used to **control the flow of execution** inside loops.

---

## There are 3 main types in Python:

### 🔹 1. `break` Statement
Used to **terminate the loop immediately** when a condition is met.

```python
for i in range(1, 10):
    if i == 5:
        break
    print(i)
```

### 🧠 Output:
```python
1
2
3
4
```

> ✅ When i == 5, the loop stops completely.

---

### 🔹 2. continue Statement

Used to skip the current iteration and move to the next one.
```python
for i in range(1, 6):
    if i == 3:
        continue
    print(i)
```

### 🧠 Output:
```python
1
2
4
5
```

> ✅ When i == 3, the loop skips printing and moves to the next iteration.

---

### 🔹 3. pass Statement

Used as a placeholder when you don’t want to execute any code.
```python
for i in range(3):
    pass
print("Loop executed successfully")
```

### 🧠 Output:
```python
Loop executed successfully
```

> ✅ The pass statement does nothing — it simply avoids syntax errors when no code is needed.

---

## 🧩 Part 2: Sequential Datatype — List

A List is a mutable, ordered collection of elements.
It can store different data types (integers, strings, floats, etc.)
```python
fruits = ["apple", "banana", "cherry", "mango"]
```

### 🔸 Accessing Elements by Index (Positive Indexing)

| Element | a[0]  | a[1]   | a[2]   | a[3]  |
| ------- | ----- | ------ | ------ | ----- |
| Value   | apple | banana | cherry | mango |

```python
fruits = ["apple", "banana", "cherry", "mango"]
print(fruits[0])   # apple
print(fruits[2])   # cherry
```

> ✅ Index starts from 0.

### 🔸 Accessing Elements by Negative Index

Negative indices start from the end of the list.

| Element | a[-4] | a[-3]  | a[-2]  | a[-1] |
| ------- | ----- | ------ | ------ | ----- |
| Value   | apple | banana | cherry | mango |

```python
print(fruits[-1])  # mango
print(fruits[-2])  # cherry
```

> ✅ -1 means the last element, -2 means second last, and so on.

### 🔸 Accessing by Position (Using range())
```python
fruits = ["apple", "banana", "cherry"]
for i in range(len(fruits)):
    print(f"Position {i} → {fruits[i]}")
```

### 🧠 Output:
```python
Position 0 → apple
Position 1 → banana
Position 2 → cherry
```

> ✅ len(fruits) gives the number of elements.

We access each item using its index position.

---

### 🔸 Reallocating / Modifying Values

Lists are mutable, meaning their values can be changed.
```python
fruits = ["apple", "banana", "cherry"]
fruits[1] = "grapes"
print(fruits)
```

### 🧠 Output:
```python
['apple', 'grapes', 'cherry']
```

> ✅ Here, "banana" was replaced by "grapes" at index 1.

---

## 🧠 Summary

| Concept        | Description                | Example             | Output        |
| -------------- | -------------------------- | ------------------- | ------------- |
| `break`        | Stops the loop immediately | `if i==5: break`    | Stops at 4    |
| `continue`     | Skips one iteration        | `if i==3: continue` | Skips 3       |
| `pass`         | Does nothing               | `pass`              | No output     |
| Positive Index | Starts from 0              | `a[0]`              | First element |
| Negative Index | Starts from -1 (end)       | `a[-1]`             | Last element  |
| Reallocation   | Modify element value       | `a[1]="new"`        | Value changed |

---

📘 *Next step (Day 15):*  

I’ll explore **Sequential Datatypes**.
