## Day-30 — PEP 8 (Python Enhancement Proposal 8)

- PEP 8 is the official style guide for writing clean and readable Python code.
- It defines rules for naming, spacing, indentation, line length, imports, and more.

---

## What is PEP 8?

- PEP 8 is a set of coding conventions created to improve the readability, consistency, and maintainability of Python programs.

#### Following PEP 8 makes your code:

- easier to read
- easier to debug
- easier for teams to work together
- look professional

---

## Key PEP 8 Rules

### 1. Indentation

- Use 4 spaces per indentation level.
- Do not use tabs.

```python
def greet():
    print("Hello")
```

---

### 2. Maximum Line Length

- Limit each line to 79 characters.
- Docstrings and comments up to 72 characters.

---

### 3. Blank Lines

- Use blank lines to separate major sections.
- 2 blank lines before class definitions
- 1 blank line inside classes

---

### 4. Imports

- Always place imports at the top.

#### Order:

- Standard library
- Third-party libraries
- Local modules

#### Example:
```python
import os
import sys

import numpy as np
import pandas as pd

from mymodule import helper
```

---

### 5. Naming Conventions

- Variables & Functions
  - Use `snake_case`:
```python
total_sum = 0
def get_value():
    pass
```

---

- Classes
  - Use `PascalCase`:
```python
class StudentRecord:
    pass
```

---

- Constants
  - `UPPER_CASE`:
```python
PI = 3.14
```

---

### 6. Whitespace Rules

- ✔ Add spaces around operators:
```pyton
a = 10 + 20
```

- ✖ Don’t write:
```python
a=10+20
```

- ✔ Add spaces after commas:
```python
print(a, b, c)
```

---

## Using PEP 8 Checker

- Older versions use: 
```python
pep8 --show-source
```

- In newer systems: 
```python
pycodestyle
```

- This command checks your Python file for PEP 8 errors and shows the source line that breaks the rule.

### Example
```python
pep8 --show-source example.py
```

### Output Example:
```python
example.py:5:10: E225 missing whitespace around operator
    x=10+20
         ^
```

- This helps you understand exactly which line violates PEP 8.

---

## Why Follow PEP 8?

- Code becomes uniform
- Easier to understand for others
- Professional standard
- Used in companies and open-source projects
- Helps avoid silly mistakes

---

## 📘 The End

This is the end of the this repo and no more updates will be proceeded in this repo. checkout some other of my repos. 