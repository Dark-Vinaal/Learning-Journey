# 🗓️ Day 19 — Set Sequence Data Type

---

## 🎯 Topics Covered

- Set
  - `add()`
  - `update()`
  - `pop()`
  - `remove()`
  - `discard()`
  - `union()`
  - `intersection()`
  - `difference()`
  - `symmetric_difference()`

---

## 🔹 Introduction

A **Set** in Python is a **collection of unique elements**.  
It is **unordered**, **unindexed**, and **mutable** — meaning items can be added or removed after creation.

### Creating a Set

- You can create a set using curly braces {} or the set() constructor.

```python
# Using curly braces
numbers = {10, 20, 30, 40}

# Using set() constructor
fruits = set(["apple", "banana", "cherry"])
```

### Example:

```python
my_set = {1, 2, 3, 4}
print(my_set)
```

### Output:
```python
{1, 2, 3, 4}
```

---

## Set Methods

## add()

- Adds a single element to the set.
```python
s = {10, 20, 30}
s.add(40)
print(s)
```

### Output
```python
{10, 20, 30, 40}
```

---

## update()

- Adds multiple elements at once.
```python
s = {1, 2, 3}
s.update([4, 5])
print(s)
```

### Output
```python
{1, 2, 3, 4, 5}
```

---

## remove()

- Removes a specific element.
- Raises an error if the element is not found.
```python
s = {10, 20, 30}
s.remove(20)
print(s)
```

### Output 
```python
{10, 30}
```

---

## discard()

- Removes an element if it exists; does not raise an error if it doesn’t.
```python
s = {1, 2, 3}
s.discard(4)
print(s)
```

### Output
```python
{1, 2, 3}
```

---

## pop()

- Removes and returns a random element.
```python
s = {10, 20, 30, 40}
s.pop()
print(s)
```

### Output
```python
One random element removed
```

---

## clear()

- Removes all elements from the set.
```python
s = {1, 2, 3}
s.clear()
print(s)
```

### Output
```python
set()
```

---

## Built-in Functions for Sets

## len()

- Returns the number of elements.
```python
s = {1, 2, 3, 4}
print(len(s))
```

### Output
```python
4
```

---

## max()

- Returns the largest element.
```python
s = {3, 9, 5}
print(max(s))
```

### Output
```python
9
```

---

## min()

- Returns the smallest element.
```python
s = {3, 9, 5}
print(min(s))
```

### Output
```python
3
```

---

## Set Operations

## union()

- Combines elements from both sets.
```python
A = {1, 2, 3}
B = {3, 4, 5}
print(A.union(B))
```

### Output
```python
{1, 2, 3, 4, 5}
```

---

## intersection()

- Returns elements common to both sets.
```python
A = {1, 2, 3, 4}
B = {3, 4, 5}
print(A.intersection(B))
```

### Output
```python
{3, 4}
```

---

## difference()

- Returns elements that are in the first set but not in the second.
```python
A = {1, 2, 3, 4}
B = {3, 4, 5}
print(A.difference(B))
```

### Output
```python
{1, 2}
```

---

## symmetric_difference()

- Returns elements that are not common to both sets.
```python
A = {1, 2, 3, 4}
B = {3, 4, 5}
print(A.symmetric_difference(B))
```

### Output
```python
{1, 2, 5}
```

---

## 📘 *Next step (Day 20):*  

I’ll explore **Dictionary**.