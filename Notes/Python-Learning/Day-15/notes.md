# 🗓️ Day 15 — Sequence Datatypes (Advanced Concepts)

### 🎯 Topics Covered

- Replacement (Value Reassignment)
- Slicing
- Extracting Odd & Even Elements
- Using `::` (Step Slicing)
- Iteration (using `for` loop)
- Concatenation & Repetition
- Predefined Functions: `len()`, `index()`, `count()`, `min()`, `max()`, `sum()`

---

## Replacement (Value Reassignment)

- Sequence types like **List** allow modification (mutable), while **Tuple** does not (immutable).
- Lists are **mutable**, meaning you can replace elements at any index.

```python
fruits = ["apple", "banana", "cherry"]
fruits[1] = "grape"
print(fruits)
```

### 🧠 Output:
```python
['apple', 'grape', 'cherry']
```

> ✅ Lists can be changed; Tuples cannot.

- Lists are **mutable**, meaning you can replace elements at any index.

```python
numbers = [10, 20, 30, 40, 50]
numbers[2] = 99
print(numbers)
```

### 🧠 Output:
```python
[10, 20, 99, 40, 50]
```

> ✅ Here, the element at index 2 was replaced with 99.

---

## ✂️ Slicing

- Slicing allows you to access a portion of a sequence (list, tuple, string).

### Syntax:
```python
sequence[start:end:step]
Part	Description	Example
start	Index to begin (inclusive)	0
end	Index to stop (exclusive)	5
step	Increment (default = 1)	2
```

### Example:
```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
print(numbers[2:6])     # [3, 4, 5, 6]
print(numbers[:5])      # [1, 2, 3, 4, 5]
print(numbers[3:])      # [4, 5, 6, 7, 8]
```

---

## Extracting Odd & Even Elements, :: Sub Step

- You can use slicing or loop filtering to get odd/even numbers.
- The double colon `::` is used for step slicing.
  - If a String is step sliced, it is called substring. same way for sublist, subtuple, subset..

```python
nums = [1, 2, 3, 4, 5, 6, 7, 8]
odd_values = nums[::2]     # Starts from index 0
even_values = nums[1::2]   # Starts from index 1
print("Odd Index Values:", odd_values)
print("Even Index Values:", even_values)
```

🧠 Output:
```python
Odd Index Values: [1, 3, 5, 7]
Even Index Values: [2, 4, 6, 8]
```

---

## Iteration using for Loop

- Iterate through each element in a list or tuple.
- You can loop through any sequence datatype like List, Tuple, or String.

```python
colors = ["red", "green", "blue"]
for color in colors:
    print(color)
```

### 🧠 Output:
```python
red
green
blue
```

---

## Concatenation (+)

- Join two sequences together using the `+` operator.
- Used to combine two sequences.
```python
a = [1, 2, 3]
b = [4, 5, 6]
c = a + b
print(c)
```

### 🧠 Output:
```python
[1, 2, 3, 4, 5, 6]
```

---

## Repetition (*)

- Used to repeat a sequence multiple times.
- Repeat the elements multiple times using the `*` operator.

```python
nums = [1, 2, 3]
print(nums * 3)
```

### 🧠 Output:
```python
[1, 2, 3, 1, 2, 3, 1, 2, 3]
```

---

## Predefined Functions

Python provides several built-in functions for sequences.

| Function  | Description                            | Example                | Output |
| --------- | -------------------------------------- | ---------------------- | ------ |
| `len()`   | Returns length of sequence             | `len([1,2,3,4])`       | `4`    |
| `index()` | Returns first index of specified value | `[10,20,30].index(20)` | `1`    |
| `count()` | Counts how many times a value appears  | `[1,2,2,3].count(2)`   | `2`    |
| `min()`   | Returns smallest element               | `min([5,10,2])`        | `2`    |
| `max()`   | Returns largest element                | `max([5,10,2])`        | `10`   |
| `sum()`   | Returns total sum of elements          | `sum([1,2,3,4])`       | `10`   |

---

## 🧠 Summary

| Concept              | Description              | Example                      |
| -------------------- | ------------------------ | ---------------------------- |
| Replacement          | Change value at index    | `a[1] = 10`                  |
| Slicing              | Extract part of sequence | `a[1:5]`                     |
| Step Slicing         | Skip or reverse          | `a[::-1]`                    |
| Odd/Even Filter      | Use `if n % 2` logic     | `[n for n in a if n % 2==0]` |
| Iteration            | Loop through values      | `for i in a:`                |
| Concatenation        | Join sequences           | `a + b`                      |
| Repetition           | Repeat sequence          | `a * 2`                      |
| Predefined Functions | Common sequence ops      | `len(a), max(a)` etc.        |

---

## 📘 *Next step (Day 16):*  

I’ll explore **Sequential Datatypes (Advanced Concepts)**.