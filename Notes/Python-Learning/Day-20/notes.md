# Day 20 – Dictionary in Python

## 🎯 Topics Covered

- Dictionary
  - `dict()`
  - `get()`
  - `update()`
  - `pop()`
  - `popitem()`
  - `clear()`
  - `items()`
  - `keys()`
  - `values()`

---

# What is a Dictionary?

- A dictionary in Python is an unordered, mutable, and indexed collection of key–value pairs.
It is used to store data values like a real-world dictionary — where each key maps to a specific value.

# Example:
```python
student = {"name": "Vinaal", "age": 21, "course": "Python"}
print(student)
```

---

## Creating a Dictionary

You can create a dictionary using curly braces {} or the dict() constructor.

---

## Using curly braces
```python
info = {"brand": "Tesla", "model": "Model X", "year": 2025}
```

## Using dict() constructor
```python
data = dict(name="Dark AI", skill="Full Stack Developer")
```

---

## Accessing Dictionary Elements

### Using Key
```python
person = {"name": "Alice", "age": 25}
print(person["name"])   # Output: Alice
```

### Using get()

- Safely returns the value of a key. If the key doesn’t exist, it returns None instead of an error.
```python
person = {"name": "Alice", "age": 25}
print(person.get("age"))       # Output: 25
print(person.get("city"))      # Output: None
```

### Modifying Dictionary Elements

- You can update an existing key or add a new one.
```python
car = {"brand": "BMW", "year": 2020}
car["year"] = 2025     # Update value
car["color"] = "Black" # Add new key-value pair
print(car)
```

---

## Dictionary Methods

### keys()

- Returns all keys from the dictionary.
```python
person = {"name": "Vinaal", "age": 21, "course": "Python"}
print(person.keys())
```

### Output
```python
dict_keys(['name', 'age', 'course'])
```

### values()

- Returns all values from the dictionary.
```python
person = {"name": "Vinaal", "age": 21}
print(person.values())
```

### Output
```python
dict_values(['Vinaal', 21])
```

### items()

- Returns all key–value pairs as tuples.
```python
person = {"name": "Vinaal", "age": 21}
print(person.items())
```

### Output
```python
dict_items([('name', 'Vinaal'), ('age', 21)])
```

### update()

- Merges another dictionary or adds new key–value pairs.
```python
student = {"name": "Dark", "age": 20}
student.update({"age": 21, "course": "Python"})
print(student)
```

### Output
```python
{'name': 'Dark', 'age': 21, 'course': 'Python'}
```

### pop()

- Removes a specific key and returns its value.
```python
data = {"x": 10, "y": 20, "z": 30}
data.pop("y")
print(data)
```

### Output
```python
{'x': 10, 'z': 30}
```

### popitem()

- Removes the last inserted key–value pair.
```python
info = {"a": 1, "b": 2, "c": 3}
info.popitem()
print(info)
```

### Output
```python
{'a': 1, 'b': 2}
```

### clear()

- Removes all items from the dictionary.
```python
info = {"x": 100, "y": 200}
info.clear()
print(info)
```

### Output
```python
{}
```

---

## Looping Through a Dictionary
```python
# Looping through keys:
car = {"brand": "Tesla", "model": "S", "year": 2025}
for key in car:
    print(key)

Looping through values:
for value in car.values():
    print(value)

Looping through both keys and values:
for key, value in car.items():
    print(key, ":", value)
```

---

## Copying a Dictionary

- You can use copy() to make a duplicate dictionary.
```python
original = {"name": "Dark", "lang": "Python"}
duplicate = original.copy()
print(duplicate)
```

---

## Nested Dictionary

- A dictionary inside another dictionary.
```python
students = {
    "student1": {"name": "Alice", "age": 20},
    "student2": {"name": "Bob", "age": 22}
}

print(students["student1"]["name"])
# Output: Alice
```

---

## Built-in Functions for Dictionary
```python
len()   # Returns total number of key-value pairs
str()   # Converts dictionary into a string
type()  # Returns the type of the object
```

---

## 📘 *Next step (Day 21):*  

I’ll explore **Function**.