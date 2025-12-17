# 📌 Time & Space Complexity in DSA  

- Time and Space Complexity tells **how efficient** an algorithm is.

---

## ⏱️ What is Time Complexity?

- It is How the no of steps grows as the input size grows      
- Time Complexity measures **how the running time increases** as the input size (n) increases.    

> Input Size Increases == Time Increases

> Time Complexity      != Actual Time taken to run a program

### Example:  
- If doubling the input doubles the time → **O(n)**  
- If doubling the input makes time constant → **O(1)**  

---

## 📦 What is Space Complexity?

- It is How much extra Memory your code/algorithm needs to run.       
- Space Complexity measures **how much extra memory** an algorithm uses.    

> Input Grows      ==  Memory Grows

> Space Complexity !=  Actual Space used by your program in memory.

### Example:  
- Using only one variable → **O(1)**  
- Using an array of size n → **O(n)**  

---

## 🧭 `Big-O Notation` (Most Common Types)

- `Big-O Notation` tells us how the `Time` and `Space` of a program increases as the input increases.
- Most common forms :
  - O(1) 
  - O(n) 
  - O(n²) 
  - O(log n) 

---

## 1️⃣ `O(1)` — Constant Time/Space Complexity :
- ✔ The operation takes the **same amount of time** no matter how big the input is.

### Example:
```python
def get_first_element(arr):
    return arr[0]   # Always one operation
```

### Where Used:

- Accessing an array element
- Pushing/popping from stack
- Hash map lookup

> Hint : only 1 step takes to get the output.

---

## 2️⃣ `O(n)` — Linear Time Complexity : 
- ✔ Time grows directly proportional to input size.

### Example:
```python
def print_items(arr):
    for x in arr:
        print(x)
```

## Where Used:

- Loop through array
- Search in unsorted list

> Hint : 1 `for` loop will be present.

---

## 3️⃣ `O(n²)` — Quadratic Time Complexity :
- ✔ Time grows square of input size.
- Usually happens with nested loops.

## Example:
```python
def print_pairs(arr):
    for i in arr:
        for j in arr:
            print(i, j)
```

### Where Used:

- Bubble Sort
- Selection Sort
- Inserting every element into every other element

> Hint : Nested `for` loop will be present. 1 for loop will be nested inside another for loop.

---

## 4️⃣ `O(log n)` — Logarithmic Time Complexity :
- ✔ Time decreases sharply as input grows.
- Happens when the problem size is divided in half repeatedly.

### Example: Binary Search
```python
def binary_search(arr, target):
    low, high = 0, len(arr)-1

    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
```

### Where Used:

- Binary Search
- Balanced Trees (AVL, Red-Black)
- Heap operations

> Hint : Uses Binary Search.

---

## 📊 `Big-O Notation` Table (Easy Comparison)

| Big-O          | Name         | Fast or Slow?     | Example                 |
| -------------- | ------------ | ----------------- | ----------------------- |
| **O(1)**       | Constant     | 🚀 Fastest        | Access array element    |
| **O(log n)**   | Logarithmic  | ⚡ Very Fast       | Binary search           |
| **O(n)**       | Linear       | 🙂 Medium         | Loop through array      |
| **O(n log n)** | Linearithmic | 😎 Good           | Merge sort / Quick sort |
| **O(n²)**      | Quadratic    | 🐢 Slow           | Nested loops            |
| **O(2ⁿ)**      | Exponential  | 🧨 Very Slow      | Recursion brute force   |
| **O(n!)**      | Factorial    | 💀 Extremely Slow | Permutations            |

---

## 🧠 Summary

- Time Complexity → how long the algorithm takes
- Space Complexity → how much extra memory it uses
- Big-O helps compare efficiency

#### Most common forms:

  - O(1) → Constant
  - O(n) → Linear
  - O(n²) → Quadratic
  - O(log n) → Logarithmic
