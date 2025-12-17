# 🗓️ Day 17 — Tuple and String in Python

---

## 🎯 Topics Covered
- Tuple Creation (Single & Multiple Elements) 
- Immutability of Tuple  
- Indexing (Positive & Negative)  
- Concatenation & Repetition  
- Built-in Functions: `count()`, `len()`  
- Converting Tuple ⇄ List  
  - List Comprehension with Tuples  
- Difference & Similarity between `index()` and `find()`
- String Creation (Single-Line & Multi-Line)
  - Length & Count
  - Concatenation and Repetition
  - Immutability 

---

## 🧩 1. Tuple — Introduction

- A **tuple** is a **sequence datatype** like a list, but **immutable** (cannot be changed after creation).
- Tuples are created using **parentheses `( )`**.

```python
# Multiple elements
t1 = (10, 20, 30, 40)
print(t1)
```

### 🧠 Output:
```python
(10, 20, 30, 40)
```

---

## 🔹 2. Tuple with a Single Element

- ⚠️ When creating a tuple with only one element, you must add a comma `,` after it. Otherwise, Python treats it as a normal or string value — not a tuple.

```python
t1 = (5)
print(type(t1))  # ❌ Not a tuple

t2 = (5,)
print(type(t2))  # ✅ Tuple
```

### 🧠 Output:
```python
<class 'int'>
<class 'tuple'>
```

---

## 🔹 3. Tuple Immutability Proof

- Tuples are immutable, meaning their values cannot be modified.

```python
t = (1, 2, 3, 4)
t[2] = 99   # ❌ Error
```

### 🧠 Output:
```python
TypeError: 'tuple' object does not support item assignment
```

> ✅ You cannot replace, insert, or delete values directly.

---

## 🔹 4. Indexing in Tuple

- Tuples support both positive and negative indexing.

```python
t = (10, 20, 30, 40, 50)
print(t[0])   # First element
print(t[-1])  # Last element
```

### 🧠 Output:
```python
10
50
```

---

## 🔹 5. Concatenation and Repetition

- You can join or repeat tuples using + and * operators.

```python
t1 = (1, 2, 3)
t2 = (4, 5)
print(t1 + t2)    # Concatenation
print(t1 * 2)     # Repetition
```

### 🧠 Output:
```python
(1, 2, 3, 4, 5)
(1, 2, 3, 1, 2, 3)
```

---

## 🔹 6. Built-in Functions — count() & len()
```python
t = (10, 20, 10, 30, 10)
print(t.count(10))  # Occurrence of 10
print(len(t))       # Total elements
```

---

### 🧠 Output:
```python
3
5
```

---

## 🔹 7. Converting Tuple to List and Back

- Tuples can be converted to lists for modification, then converted back.

```python
t = (1, 2, 3)
lst = list(t)         # Convert to list
lst.append(4)         # Modify list
t_new = tuple(lst)    # Convert back to tuple
print(t_new)
```

### 🧠 Output:
```python
(1, 2, 3, 4)
```

---

## 🔹 8. List Comprehension with Tuples

- Although tuples are immutable, we can create new tuples using list comprehension and conversion.

```python
t = (1, 2, 3, 4, 5)
new_t = tuple([x**2 for x in t])
print(new_t)
```

---

### 🧠 Output:
```python
(1, 4, 9, 16, 25)
```

---

## 🔹 9. Difference & Similarity — index() vs find()

| Feature        | `index()`                         | `find()`                          |
| -------------- | --------------------------------- | --------------------------------- |
| Belongs To     | Tuple, List, String               | String only                       |
| Purpose        | Returns index of first occurrence | Returns index of first occurrence |
| Error Handling | Raises `ValueError` if not found  | Returns `-1` if not found         |
| Example        | `(1,2,3).index(2)` → 1            | `"hello".find('o')` → 4           |

> ✅ Similarity: Both return the position of a value.

> ⚠️ Difference: index() works on tuples/lists, while find() works only on strings.

---

## 🧩 10. String

- A **string** is a sequence of **characters** enclosed within single quotes (`' '`), double quotes (`" "`) or triple quotes (`''' '''` or `""" """`).
- Strings are **immutable**, meaning their content cannot be changed after creation.

---

## 🔹11. Creating Strings

### ➤ Single-Line String

```python
name = "Dark AI"
print(name)
```

### 🧠 Output:
```python
Dark AI
```

---

## ➤ Multi-Line String

- You can use triple quotes (''' or """) or multi-line backticks ( for markdown) to write multi-line strings.

```python
message = """Hello!
This is a multi-line string in Python.
It can span across several lines."""
print(message)
```

### 🧠 Output:
```python
Hello!
```

> This is a multi-line string in Python. It can span across several lines.

---

## 🔹 12. Length of String — len()

- The len() function returns the total number of characters (including spaces).

```python
text = "Python Programming"
print(len(text))
```

### 🧠 Output:
```python
18
```

---

## 🔹 13. Count Characters — count()

- You can count how many times a specific character or word appears in a string.

```python
text = "banana"
print(text.count("a"))
```

### 🧠 Output:
```python
3
```

---

## 🔹 14. Concatenation (+) and Repetition (*)

### ➤ Concatenation
```python
first = "Hello"
second = "World"
result = first + " " + second
print(result)
```

### 🧠 Output:
```python
Hello World
```

---

### ➤ Repetition
```python
Copy code
word = "Hi "
print(word * 3)
```

### 🧠 Output:
```python
Hi Hi Hi
```

---

## 🔹 6. Immutability

- Strings are immutable, meaning you cannot change their content directly.

```python
Copy code
text = "Python"
text[0] = "J"  # ❌ Error
```

### 🧠 Output:
```python
TypeError: 'str' object does not support item assignment
```
> ✅ To “modify” a string, you must create a new one.

```python
text = "Python"
new_text = "J" + text[1:]
print(new_text)
```

### 🧠 Output:
```python
Jython
```

---

# 🧠 Summary Table

| Concept        | Description                   | Example            | Output       |
| -------------- | ----------------------------- | ------------------ | ------------ |
| Tuple          | Ordered, immutable collection | `(1,2,3)`          | `(1,2,3)`    |
| Single Element | Must have a comma             | `(5,)`             | Tuple        |
| Immutability   | Values can't change           | `t[0]=9`           | ❌ Error      |
| Indexing       | Positive & Negative           | `t[-1]`            | Last value   |
| Concatenation  | Combine tuples                | `t1+t2`            | Joined tuple |
| Repetition     | Repeat tuple                  | `t*2`              | Doubled      |
| `count()`      | No. of occurrences            | `t.count(10)`      | 3            |
| `len()`        | No. of items                  | `len(t)`           | 5            |
| Conversion     | Tuple ⇄ List                  | `tuple(list())`    | ✅            |
| `index()`      | Finds index                   | `(1,2,3).index(2)` | 1            |
| `find()`       | Works in strings              | `"hi".find('i')`   | 1            |
| String            | Sequence of characters  | `"Hello"`             | Hello           |
| Multi-line String | Spans multiple lines    | `"""text"""`          | Multi-line text |
| `len()`           | Counts total characters | `len("AI")`           | 2               |
| `count()`         | Counts occurrence       | `"banana".count("a")` | 3               |
| Concatenation     | Join strings            | `"Hi" + "There"`      | HiThere         |
| Repetition        | Repeat string           | `"Hi " * 3`           | Hi Hi Hi        |
| Immutable         | Cannot change value     | `"Hi"[0] = 'Y'`       | ❌ Error         |

---

## 📘 *Next step (Day 18):*  

I’ll explore **String**.