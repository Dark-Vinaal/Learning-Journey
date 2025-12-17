## 🗓️ Day-24 — Math Module in Python

- The math module in Python provides mathematical functions and constants.
To use it, you must import the module.

```python
import math
```

---

## 1. `import` Importing the Math Module

Standard Import
```python
import math
```

- Importing Specific Functions 
```md
from math import sqrt, ceil
```

---

## 2. `ceil()` — Ceiling Function

- Returns the smallest integer greater than or equal to the number.
```python
import math
print(math.ceil(4.2))   # Output: 5
```

---

## 3. `floor()` — Floor Function

- Returns the largest integer less than or equal to the number.
```python
import math
print(math.floor(4.9))   # Output: 4
```

---

## 4. `factorial()` - Factorial Function

- Returns the factorial of a number (n!).
```python
import math
print(math.factorial(5))  # Output: 120
```

---

## 5. `fabs()` — Absolute Value (Float)

- Returns the absolute value as a float.
```python
import math
print(math.fabs(-12.5))   # Output: 12.5
```

---

## 6. `fmod()` — Modulo for Floats

- Works like % but better for floating-point numbers.
```python
import math
print(math.fmod(22.5, 4))   # Output: 2.5
```

---

## 7. `pow()` — Power Function

- Two ways to use power in Python:

### Using `math.pow()` (always returns float)
```python
import math
print(math.pow(2, 3))   # Output: 8.0
```

### Using built-in `pow()` (can return int)
```python
print(pow(2, 3))   # Output: 8
```

---

## 8. `exp()` — Exponential Function

- Returns e raised to the power of the given number.

```python
import math
print(math.exp(2))   # Output: 7.389...
```

---

## Math Constants

- Python has some built-in constant math functions like `pi`, `tau`

### `math.pi` — PI (3.14159…)
```python
import math
print(math.pi)    # Output: 3.141592653589793
```

### `math.tau` — Tau (2π)
```python
import math
print(math.tau)    # Output: 6.283185307179586
```

---

## 9. `round()` — Rounding Values

- `round()` is a built-in function, not inside math module.

#### Simple round:

- Decimal value greater than 5
```python
print(round(4.567))    # Output: 5
```

- Decimal value lower than 5
```python
print(round(4.234))    # Output: 4
```

#### Round to specific digits:
```python
print(round(4.567, 2))   # Output: 4.57
```

---

## 📘 *Next step (Day 25):*  

I’ll explore **Random Module**.
