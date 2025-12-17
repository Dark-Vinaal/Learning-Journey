# 🗓️ Day 16 — Predefined Functions in Lists & List Comprehension

---

## 🎯 Topics Covered
- Predefined List Functions  
- Adding Elements from a List
  - `append()`,
  - `extend()`,
  - `insert()`
- Deleting Elements from a List  
  - `pop()`,
  - `pop(index)`  
- Sorting Elements in a List
  - `sort()`,
  - `sort(reverse=True)`  
- `reverse()`  
- **List Comprehension**

---

## 🧩 1. append()

Used to **add** a single element to the **end** of a list.

```python
fruits = ["apple", "banana"]
fruits.append("cherry")
print(fruits)
```

### 🧠 Output
```python
['apple', 'banana', 'cherry']
```

---

## 🧩 2. extend()
Used to add multiple elements (from another list, tuple, or set) to the end of a list.

```python
fruits = ["apple", "banana"]
fruits.extend(["mango", "orange"])
print(fruits)
```

### 🧠 Output:
```python
['apple', 'banana', 'mango', 'orange']
```

---

## 🧩 3. insert()
Used to insert an element at a specific index.

```python
fruits = ["apple", "banana", "cherry"]
fruits.insert(1, "grape")
print(fruits)
```

### 🧠 Output:
```python
['apple', 'grape', 'banana', 'cherry']
```

---

## 🧩 4. pop()
Removes the last element from the list.

```python
numbers = [10, 20, 30, 40]
numbers.pop()
print(numbers)
```

### 🧠 Output:
```python
[10, 20, 30]
```

---

## 🧩 5. pop(index)
Removes the element at the specified index.

```python
numbers = [10, 20, 30, 40, 50]
numbers.pop(2)
print(numbers)
```

### 🧠 Output:
```python
[10, 20, 40, 50]
```

---

## 🧩 6. sort()
Used to sort the list in ascending order (A–Z or smallest to largest).

```python
nums = [5, 3, 9, 1, 7]
nums.sort()
print(nums)
```

### 🧠 Output:
```python
[1, 3, 5, 7, 9]
```

---

## 🧩 7. sort(reverse=True)
Used to sort the list in descending order.

```python
nums = [5, 3, 9, 1, 7]
nums.sort(reverse=True)
print(nums)
```

### 🧠 Output:
```python
[9, 7, 5, 3, 1]
```

---

## 🧩 8. reverse()
Used to reverse the order of elements (without sorting).

```python
nums = ["A",25,"Hi",3.09,"45"]
nums.reverse()
print(nums)
```

### 🧠 Output:
```python
["45",3.09,"Hi",25,"A"]
```

---

## 🧩 9. List Comprehension

A short and powerful way to create lists using a single line of code.

### 🧠 Basic Syntax:
```md
new_list = [expression for item in iterable if condition]
```

### ✅ Example - Convert to Uppercase
```python
fruits = ["apple", "banana", "cherry"]
upper_fruits = [fruit.upper() for fruit in fruits]
print(upper_fruits)
```

### 🧠 Output:
```python
['APPLE', 'BANANA', 'CHERRY']
```

---

## 🧠 Quick Recap

| Function             | Description           | Example                      | Output         |
| -------------------- | --------------------- | ---------------------------- | -------------- |
| `append(x)`          | Add single element    | `[1,2].append(3)`            | `[1,2,3]`      |
| `extend(iterable)`   | Add multiple elements | `[1,2].extend([3,4])`        | `[1,2,3,4]`    |
| `insert(i,x)`        | Insert at index       | `a.insert(1, 99)`            | `[1,99,2,3]`   |
| `pop()`              | Remove last           | `[1,2,3].pop()`              | `[1,2]`        |
| `pop(i)`             | Remove at index       | `[10,20,30].pop(1)`          | `[10,30]`      |
| `sort()`             | Sort ascending        | `[3,1,2].sort()`             | `[1,2,3]`      |
| `sort(reverse=True)` | Sort descending       | `[3,1,2].sort(reverse=True)` | `[3,2,1]`      |
| `reverse()`          | Reverse order         | `[1,2,3].reverse()`          | `[3,2,1]`      |
| List Comprehension   | Compact list creation | `[x**2 for x in range(5)]`   | `[0,1,4,9,16]` |

---

## 📘 *Next step (Day 17):*  

I’ll explore **Tuple & String**.