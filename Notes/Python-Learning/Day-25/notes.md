## 🗓️ Day-25 — Random Module & Collections Module

### 🎯 Topics Covered

- Random module functions
  - Generating random numbers, choices, shuffling
- Using Counter from collections
- Dictionary get() method

---

## Random Module

- To use the random module, import it first:
```python
import random
```

---

## 1. `random.random()`

- Returns a random float between 0 and 1.
```python
import random
print(random.random())  
```

---

## 2. `random.uniform(a, b)`

- Returns a float between a and b (including decimals).
```python
import random
print(random.uniform(10, 20))
```

---

## 3. `random.randint(a, b)`

- Returns a random integer between a and b (inclusive).
```python
import random
print(random.randint(1, 10))
```

---

## 4. `random.choice()`

- Returns one random element from a list, tuple, or string.
```python
import random
items = ["apple", "banana", "orange"]
print(random.choice(items))
```

---

## 5. `random.choices()`

- Returns multiple random elements from a sequence.
- You can specify how many you want using k.
```python
import random
items = ["red", "blue", "green"]
print(random.choices(items, k=2))
```

---

## 6. `random.shuffle()`

- Shuffles a list in place (modifies original list).
```python
import random
nums = [1, 2, 3, 4, 5]
random.shuffle(nums)
print(nums)
```

---

## Collections Module — `Counter()`

- `Counter()` counts how many times each item appears in a list, string, or tuple.

```python
from collections import Counter

data = [1, 2, 2, 3, 3, 3]
result = Counter(data)
print(result)
```

### Output:
```python
Counter({3: 3, 2: 2, 1: 1})
```

---

## Dictionary Method — `get()`

- `get()` is used to safely access dictionary values.
- If a key does not exist, it won't give an error. Instead, it returns None or your custom default value.

### Example 1: key exists
```python
person = {"name": "Dark AI", "age": 21}
print(person.get("name"))
```

### Example 2: key doesn't exist
```python
print(person.get("address"))   # Output: None
```

### Example 3: key doesn't exist, using default value
```python
print(person.get("address", "Not Available"))
```

---

## 📘 *Next step (Day 26):*  

I’ll explore **NumPy & Pandas Libraries**.