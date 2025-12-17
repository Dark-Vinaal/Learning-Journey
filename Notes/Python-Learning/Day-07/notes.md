# 🗓️ Day 7 — Python Data Types & Sequence Data Types

Hi everyone 👋  
Today (Day 7), I learned about **Python data types**, including basic types like integers, strings, floats, booleans, and None, along with **sequence data types** like lists, tuples, and sets.

---

## 🔢 Basic Data Types in Python

| Data Type | Description | Example |
|------------|--------------|----------|
| **int** | Integer numbers (positive or negative, without decimals) | `age = 25` |
| **float** | Numbers with decimal points | `pi = 3.14` |
| **string (str)** | Text or sequence of characters | `name = "Dark AI"` |
| **boolean (bool)** | Represents True or False values | `is_active = True` |
| **NoneType (None)** | Represents the absence of a value | `x = None` |

### 🧩 Example:

```python
name = "Vinaal"
age = 20
height = 6.0
is_student = True
project = 5

print(type(name))       # <class 'str'>
print(type(age))        # <class 'int'>
print(type(height))     # <class 'float'>
print(type(is_student)) # <class 'bool'>
print(type(project))    # <class 'NoneType'>
```

---

# 📦 Sequence Data Types

Sequence data types hold multiple items in a single variable.

## List

- Ordered and mutable (changeable)
- Elements are enclosed in square brackets [ ]

```python
fruits = ["apple", "banana", "cherry"]
fruits.append("orange")
print(fruits)  # ['apple', 'banana', 'cherry', 'orange']
```

### ✅ Lists can contain mixed data types:

```python
data = [10, "AI", 5.5, True]
```

---

## 2️⃣ Tuple

- Ordered and immutable (cannot be changed)
- Elements are enclosed in parentheses ( )

```python
colors = ("red", "green", "blue")
print(colors[0])  # red
```


### ⚡ You can access tuple items but can’t modify them:

```python
 colors[0] = "yellow" # ❌ — will cause an error
```

---

# 3️⃣ Set

- Unordered and does not allow duplicates
- Elements are enclosed in curly braces { }

```python
numbers = {1, 2, 3, 3, 2, 4}
print(numbers)  # {1, 2, 3, 4}
```


✅ Sets are useful for removing duplicate elements automatically.

---

## 🧠 Summary

| Type   | Mutable | Ordered | Allows Duplicates | Example     |
|---------|----------|----------|------------------|--------------|
| **List**  | ✅ Yes | ✅ Yes | ✅ Yes | `[1, 2, 3]` |
| **Tuple** | ❌ No  | ✅ Yes | ✅ Yes | `(1, 2, 3)` |
| **Set**   | ✅ Yes | ❌ No  | ❌ No  | `{1, 2, 3}` |

---

> 🧩 In summary, Python offers various data types for handling numbers, text, logic, and collections. Choosing the right type makes your program more efficient and easier to manage.

---

📘 *Next step (Day 8):*  

I’ll explore **Type Casting**.
