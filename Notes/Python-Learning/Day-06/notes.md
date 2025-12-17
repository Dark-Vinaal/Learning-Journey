# 🗓️ Day 6 — Python Identifiers, Variables & Comments

Hi everyone 👋  
Today, I learned about **Python identifiers**, **variables**, and how to write **comments** — both single-line and multi-line.  

---

## 🧩 Identifiers

- **Identifiers** are the names used to identify variables, functions, classes, or objects.  
- They help the interpreter recognize what value or function you’re referring to.

**Rules for identifiers:**
1. Must **begin with a letter** (A–Z, a–z) or **underscore** `_`.
2. Cannot start with a **number**.
3. Can contain **letters, digits, and underscores** only.
4. Are **case-sensitive** → `name` and `Name` are different.
5. Cannot be a **Python keyword** (like `if`, `while`, `for`, etc.).

**Example:**
```python
name = "Vinaal"
age = 20
_userID = 1234
```

invalid : 
```python
9addr = 9876
```

> ✅ Valid identifiers: name, _userID, data123

> ❌ Invalid identifiers: 123name, user id, for

---

## 🧮 Variables

- **Variables** are used to store data in memory.  
- In Python, you don’t need to declare the data type explicitly — it’s **dynamically typed**.

### 🧩 Example:
```python
name = "Dark AI"
age = 21
height = 5.9
```

## 🧠 The interpreter automatically identifies data types:

- "Dark AI" → string
- 21 → integer
- 5.9 → float

---

## 💬 Comments in Python

Comments are non-executable lines that describe your code for better readability.

## ✏️ Single-Line Comment

Use the # symbol before your comment:

### This is a single-line comment

```python
print("Hello, World!")  # You can also add it inline
```

## 🧾 Multi-Line Comment

You can use triple quotes (''' or """) for multiple lines:

```python
'''
This is a multi-line comment.
It can span across several lines.
Useful for documentation or explanations.
'''
```

 > 🧩 Note: Technically, Python treats triple quotes as multi-line strings, but they work well as documentation-style comments.

---

📘 *Next step (Day 7):*  

I’ll explore **Data Types**.
