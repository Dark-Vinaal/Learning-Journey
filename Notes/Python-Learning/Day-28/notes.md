## Day-28 — Object-Oriented Programming (OOP)

- OOPS Stands for Object Oriented Programming

## 🎯 Topics Covered
- Class
- Object
- Inheritance
  - Single Inheritance
  - Multilevel Inheritance
  - Hierarchical Inheritance
- Polymorphism
  - Method Overloading
  - Operator Overloading
  - Overriding
- Abstraction
- Encapsulation

---

## 1. Classes and Objects
## Class

- A class is a blueprint/template for creating objects.
- It contains variables (attributes) and functions (methods).

```python
class Student:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def display(self):
        print("Name:", self.name, "Age:", self.age)
```

---

## Object

- An object is an instance of a class.
- It is an entity.

```python
s1 = Student("Vinaal", 20)
s1.display()
```

---

## 2. Inheritance

- Inheritance allows one class to access properties of another class.
- A class derived from another class, then it is called as inheritance.

---

## Single Inheritance

- One parent class → One child class.

```python
class Animal:
    def sound(self):
        print("Animals make sound")

class Dog(Animal):   # Child of Animal
    def bark(self):
        print("Dog barks")

d = Dog()
d.sound()
d.bark()
```

---

## Multilevel Inheritance

- Grandparent → Parent → Child.

```python
class A:
    def showA(self):
        print("This is Class A")

class B(A):
    def showB(self):
        print("This is Class B")

class C(B):
    def showC(self):
        print("This is Class C")

obj = C()
obj.showA()
obj.showB()
obj.showC()
```

---

## Hierarchical Inheritance

- In Hierarchical Inheritance, one parent class is inherited by multiple child classes.

> 📌 One parent → Many children

### Example:
```python
class Animal:
    def sound(self):
        print("Animals have different sounds")

class Dog(Animal):
    def bark(self):
        print("Dog barks: Woof!")

class Cat(Animal):
    def meow(self):
        print("Cat meows: Meow!")

class Cow(Animal):
    def moo(self):
        print("Cow moos: Moo!")

# Creating objects for each child class
d = Dog()
c = Cat()
co = Cow()

d.sound()
d.bark()

c.sound()
c.meow()

co.sound()
co.moo()
```

---

## 📘 *Next step (Day 29):*  

I’ll explore **Polymorphism, Abstraction, Encapsulation**.