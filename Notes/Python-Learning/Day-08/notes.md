# 🗓️ Day 8 — Python Type Casting

Hi everyone 👋  
Today (Day 8), I learned about **Type Casting** in Python — how to convert one data type into another.

---

## 🔍 What is Type Casting?

**Type casting** (also called **type conversion**) means changing a value from one data type to another.  
Python provides **built-in functions** to perform type casting.

There are **two types** of casting:

1. **Implicit Type Casting (Automatic)**
2. **Explicit Type Casting (Manual)**

---

## ⚙️ 1️⃣ Implicit Type Casting

- Done **automatically by Python**.  
- The interpreter converts smaller data types to larger ones to avoid data loss.  

**Example:**
```python
a = 5       # int
b = 2.5     # float

result = a + b
print(result)       # 7.5
print(type(result)) # <class 'float'> 
```

🧠 Here, Python automatically converted a (int) into a float to match b during addition.

---

## 🧩 2️⃣ Explicit Type Casting

Done manually by the programmer using functions like:

- int()
- float()
- str()
- bool()
- list()
- tuple()
- set()

**Example:**

## 🔢 Integer (int) Conversions

```python
# int ➡ float
x = 10
print(float(x))  # 10.0

# int ➡ str
x = 10
print(str(x))  # '10'

# int ➡ bool
x = 10
print(bool(x))  # True
x = 0
print(bool(x))  # False
```

## 💧 Float Conversions
```python
# float ➡ int
a = 9.8
print(int(a))  # 9

# float ➡ str
a = 9.8
print(str(a))  # '9.8'

# float ➡ bool
a = 0.0
print(bool(a))  # False
a = 2.5
print(bool(a))  # True
```

## 🧵 String (str) Conversions
```python
# str ➡ int
s = "25"
print(int(s))  # 25

# str ➡ float
s = "3.14"
print(float(s))  # 3.14

# str ➡ bool
s = ""
print(bool(s))  # False
s = "Hello"
print(bool(s))  # True 
```

> 🧩 Note: Strings must contain valid numeric values to be converted to int or float.

## ⚙️ Boolean (bool) Conversions
```python
# bool ➡ int
b = True
print(int(b))  # 1
b = False
print(int(b))  # 0

# bool ➡ float
b = True
print(float(b))  # 1.0

# bool ➡ str
b = False
print(str(b))  # 'False'
```

## 🔗 List Conversions
```python
# list ➡ tuple
lst = [1, 2, 3]
print(tuple(lst))  # (1, 2, 3)

# list ➡ set
lst = [1, 2, 2, 3]
print(set(lst))  # {1, 2, 3}

# list ➡ dict (must contain pairs)
pairs = [[1, 'a'], [2, 'b']]
print(dict(pairs))  # {1: 'a', 2: 'b'}

# list ➡ dict (using zip()) 
keys = ['a', 'b', 'c']
values = [1, 2, 3]

result = dict(zip(keys, values))
print(result)  # {'a': 1, 'b': 2, 'c': 3}
```

## 🔸 Tuple Conversions
```python
# tuple ➡ list
t = (1, 2, 3)
print(list(t))  # [1, 2, 3]

# tuple ➡ set
t = (1, 2, 2, 3)
print(set(t))  # {1, 2, 3}

# tuple ➡ dict
t = ((1, 'x'), (2, 'y'))
print(dict(t))  # {1: 'x', 2: 'y'}
```

## 🔹 Set Conversions
```python
# set ➡ list
s = {1, 2, 3}
print(list(s))  # [1, 2, 3]

# set ➡ tuple
s = {1, 2, 3}
print(tuple(s))  # (1, 2, 3)
```

>⚠️ Sets cannot be directly converted to dicts because they don’t have key-value pairs.

```python
keys = {'a', 'b', 'c'}
values = {1, 2, 3}

# Convert sets into a dictionary
result = dict(zip(keys, values))
print(result)  # {'a': 1, 'b': 2, 'c': 3}
```

## 🧰 Dictionary (dict) Conversions
```python
# dict ➡ list (keys only)
d = {1: 'a', 2: 'b'}
print(list(d))  # [1, 2]

# dict ➡ tuple (keys only)
print(tuple(d))  # (1, 2)

# dict ➡ set (keys only)
print(set(d))  # {1, 2}
```

---

## 🧠 Summary — Type Casting (with zip() usage)

| From / To | int | float | str | bool | list | tuple | set | dict |
|------------|------|--------|------|-------|--------|--------|------|------|
| **int** | ✅ | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| **float** | ✅ | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| **str** | ✅ (if numeric) | ✅ (if numeric) | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| **bool** | ✅ | ✅ | ✅ | ✅ | ❌ | ❌ | ❌ | ❌ |
| **list** | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ (if pairs) |
| **tuple** | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ (if pairs) |
| **set** | ❌ | ❌ | ✅ | ✅ | ✅ | ✅ | ✅ | ⚙️ Using `zip()` |
| **dict** | ❌ | ❌ | ✅ | ✅ | ✅ (keys) | ✅ (keys) | ✅ (keys) | ✅ |

---

## zip() 

### ⚙️ Explanation

- zip(keys, values) pairs each element from keys with one from values.
- dict(zip(...)) converts those pairs into a dictionary.

> ⚠️ Since sets are unordered, the pairing may differ each time you run it.
If you need predictable order — use lists or tuples instead.

### ⚙️ Using `zip()` for Conversion to Dictionary

You can use `zip()` to combine two sets, lists, or tuples into **key-value pairs** and then convert them to a dictionary.

```python
# Example: Using zip() to convert two sets into a dictionary
keys = {'a', 'b', 'c'}
values = {1, 2, 3}

result = dict(zip(keys, values))
print(result) # {'a': 1, 'b': 2, 'c': 3}

# To maintain order, use lists or tuples instead:
keys = ['a', 'b', 'c']
values = [1, 2, 3]

result = dict(zip(keys, values))
print(result)  # {'a': 1, 'b': 2, 'c': 3}
```

---

## 🧠 Summary

- Implicit Casting → Done automatically by Python.
- Explicit Casting → Done manually using conversion functions.
- Always check data types using type() after conversion.

> 💡 Type casting is useful for user input, data validation, and working with mixed data types in real-world applications.

---

📘 *Next step (Day 9):*  

I’ll explore **input mtd & f-string**.