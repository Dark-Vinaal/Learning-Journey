# 🗓️ Day 10 — Python Operators

## 🎯 Topics Covered
- Arithmetic Operators  
- Relational (Comparison) Operators  
- Assignment Operators  
- Logical Operators  
- Membership Operators  
- Identity Operators  

---

## ➕ Arithmetic Operators

Arithmetic operators are used to perform mathematical (arithmetic) operations.

| Operator | Description | Example | Output | Comment |
|-----------|--------------|----------|---------|---------|
| `+` | Addition | `10 + 5` | `15` | returns the Additon value |
| `-` | Subtraction | `10 - 5` | `5` | returns the Subtraction value |
| `*` | Multiplication | `10 * 5` | `50` | returns the Multiplication value |
| `/` | Division | `10 / 5` | `2.0` |---------| returns the Division quotient value in Float form |
| `//` | Floor Division | `10 / 5` | `2` | returns the Division quotient value in Integer form |
| `%` | Modulus (Remainder) | `10 % 3` | `1` | returns the Division remainder |
| `**` | Exponent (Power) | `2 ** 3` | `8` | returns the power value |

### 💻 Example:
```python
a = 10
b = 2

print(a + b)   # 12
print(a - b)   # 8
print(a * b)   # 20
print(a / b)   # 5.00...
print(a // b)  # 5
print(a % b)   # 0
print(a ** b)  # 100
```

---

## ⚖️ Relational (Comparison) Operators

Relational Operators are used to compare two values — result is always True or False.

| Operator | Description              | Example  | Output |
| -------- | ------------------------ | -------- | ------ |
| `==`     | Equal to                 | `5 == 5` | `True` |
| `!=`     | Not equal to             | `5 != 3` | `True` |
| `>`      | Greater than             | `7 > 4`  | `True` |
| `<`      | Less than                | `3 < 8`  | `True` |
| `>=`     | Greater than or equal to | `7 >= 7` | `True` |
| `<=`     | Less than or equal to    | `4 <= 6` | `True` |

### 💻 Example:
```python
x = 10
y = 20

print(x == y)
print(x != y)
print(x > y)
print(x < y)
print(x >= y)
print(x <= y)
```

---

## 🧾 Assignment Operators

Assignment Operators are sed to assign or update values in variables.

| Operator | Example  | Equivalent To        |
| -------- | -------- | -------------------- |
| `=`      | `x = 5`  | Assigns value 5 to x |
| `+=`     | `x += 3` | `x = x + 3`          |
| `-=`     | `x -= 2` | `x = x - 2`          |
| `*=`     | `x *= 4` | `x = x * 4`          |
| `/=`     | `x /= 2` | `x = x / 2`          |
| `//=`    | `x //= 2`| `x = x // 2`         |
| `%=`     | `x %= 3` | `x = x % 3`          |

### 💻 Example:
```python
x = 10

x += 5
print(x)   # 15

x -= 5
print(x)   # 5

x *= 2
print(x)   # 30

x /= 2
print(x)   # 5.00

x //= 2
print(x)   # 5

x %= 2
print(x)   # 0

x **= 2
print(x)   # 100
```

---

## 🧠 Logical Operators

Logical Operators are used to combine conditional statements.

| Operator | Description                   | Example              | Output  |
| -------- | ----------------------------- | -------------------- | ------- |
| `and`    | Returns True if both are True | `(5 > 3 and 10 > 5)` | `True`  |
| `or`     | Returns True if one is True   | `(5 > 10 or 10 > 5)` | `True`  |
| `not`    | Reverses the result           | `not(5 > 3)`         | `False` |

### 💻 Example:
```python
a = 5
b = 10

print(a > 2 and b > 5)
print(a > 10 or b > 5)
print(not(a > 2))
```

---

## 🔍 Membership Operators

Membership Operators are used to check if a value exists in a sequence (like list, string, or tuple).
- Here **in** is checking whether the value is present or not
- Whereas **not in** is opposite of **in**.
- Simply **not in** is opposite of **in**.

| Operator | Description                  | Example                | Output |
| -------- | ---------------------------- | ---------------------- | ------ |
| `in`     | True if value is present     | `"a" in "Dark AI"`     | `True` |
| `not in` | True if value is NOT present | `"z" not in "Dark AI"` | `True` |

### 💻 Example:
```python
fruits = ["apple", "banana", "cherry"]
print("apple" in fruits)       # True
print("grape" not in fruits)   # True
```

---

## 🧩 Identity Operators

Identity Operators are used to compare memory locations of two objects.
- **is not** is opposite of **is**.

| Operator | Description                        | Example      | Output         |
| -------- | ---------------------------------- | ------------ | -------------- |
| `is`     | True if both refer to same object  | `a is b`     | `True / False` |
| `is not` | True if both are different objects | `a is not b` | `True / False` |

### 💻 Example:
```python
a = [1, 2, 3]
b = a
c = [1, 2, 3]

print(a is b)      # True (same memory)
print(a is not c)  # True (different objects)
```

---

## 🧠 Summary

| Category   | Operators               | Example            |
| ---------- | ----------------------- | ------------------ |
| Arithmetic | `+  -  *  /  %  **`     | `x + y`            |
| Relational | `==  !=  >  <  >=  <=`  | `x > y`            |
| Assignment | `=  +=  -=  *=  /=  %=` | `x += 1`           |
| Logical    | `and  or  not`          | `x > 5 and y < 10` |
| Membership | `in  not in`            | `"a" in "apple"`   |
| Identity   | `is  is not`            | `x is y`           |

---

📘 *Next step (Day 11):*  

I’ll explore **Control Structure - Conditional Statement**.