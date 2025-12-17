## Day-29 — Polymorphism, Abstraction, Encapsulation

## ## 🎯 Topics Covered
- Polymorphism
  - Method Overloading
  - Method Overriding
  - Operator Overloading
- Abstraction
- Encapsulation

---

## 1. Polymorphism

- Polymorphism allows the same function or operator to behave differently depending on the situation.

### 1.1 Method Overloading (Not directly supported in Python)

- Python does not support traditional method overloading, but it can be achieved using default parameters or *args.

#### Example (Using default parameters):
```python
class Math:
    def add(self, a=0, b=0, c=0):
        return a + b + c

m = Math()
print(m.add(5))          # 5
print(m.add(5, 10))      # 15
print(m.add(5, 10, 15))  # 30
```

---

### 1.2 Operator Overloading

- Python allows operators like +, -, >, == to be overloaded using special methods (dunder methods).

#### Example:
```python
class Book:
    def __init__(self, pages):
        self.pages = pages

    def __add__(self, other):
        return self.pages + other.pages

b1 = Book(120)
b2 = Book(180)
print(b1 + b2)   # 300
```

---

### 1.3 Method Overriding

- Child class redefines a method from its parent class.

#### Example:
```python
class Animal:
    def sound(self):
        print("Animals make sounds")

class Dog(Animal):
    def sound(self):
        print("Dog barks")

d = Dog()
d.sound()
```

---

## 2. Abstraction

- Abstraction hides implementation details and shows only essential features.
- In Python, abstraction is done using abstract classes with the abc module.

### 2.1 Abstract Class Example
```python
from abc import ABC, abstractmethod

class Vehicle(ABC):
    @abstractmethod
    def start(self):
        pass

class Car(Vehicle):
    def start(self):
        print("Car starts with a key")

class Bike(Vehicle):
    def start(self):
        print("Bike starts with a kick")

c = Car()
b = Bike()

c.start()
b.start()
```

---

## 3. Encapsulation

- Encapsulation means binding data (variables) and methods in a class and controlling access using access specifiers.

### Python uses:

- public → accessible everywhere

- _protected → accessible within class + subclasses

- __private → fully private to the class


---

### 3.1 Public, Protected, Private Variables

#### Example:
```python
class Person:
    def __init__(self):
        self.name = "Vinaal"        # public
        self._age = 21              # protected
        self.__salary = 50000       # private

    def show(self):
        print(self.name)
        print(self._age)
        print(self.__salary)

p = Person()
p.show()

print(p.name)      # Allowed
print(p._age)      # Allowed (not recommended)
# print(p.__salary)  # Error

Accessing Private Variable Indirectly:
print(p._Person__salary)
```

---

## 📘 *Next step (Day 30):*  

I’ll explore **pep8 tool**.