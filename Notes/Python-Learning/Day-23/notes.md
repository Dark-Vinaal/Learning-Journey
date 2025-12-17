## 🗓️ Day-23 — File Handling & OS Module

## 🎯 Topics Covered

- File Handling
- Modules
 - OS Module
- `read()`, `write()`, `open()`
- `"r"`, `"w"`, `"a"`

---

## Introduction

- File handling in Python allows you to create, read, write, append, and manage files.
- The os module is used to interact with the operating system—such as navigating folders or listing files.

---

## OS Module Basics

### `os.getcwd()` — Get Current Working Directory

- Returns the folder in which the Python file is currently running.
```python
import os
print(os.getcwd())
```

---

### `os.listdir()` — List All Files/Folders

- Displays all files and directories inside the current folder.
```python
import os
print(os.listdir())
```

---

### Changing the Current Directory

- Use `os.chdir(path)` to move into another folder.
```python
import os
os.chdir("C:/Users/YourName/Documents")
print(os.getcwd())
```

---

# File Handling Modes

- Python uses modes to decide how a file is opened.

| Mode | Meaning                 |
| ---- | ----------------------- |
| `r`  | Read (default)          |
| `w`  | Write (overwrites file) |
| `a`  | Append (adds to file)   |
| `r+` | Read + Write            |
| `w+` | Write + Read            |
| `a+` | Append + Read           |

> (No tables were requested for methods; this is acceptable because it's conceptual.)

---

## Opening a File
```python
f = open("sample.txt", "w")
```

## Writing to a File — `write()`
```python
f = open("sample.txt", "w")
f.write("Hello, this is written into the file.")
f.close()
```

## Appending to a File — a Mode
```python
f = open("sample.txt", "a")
f.write("\nThis line was appended.")
f.close()
```

## Reading from a File — `read()`
```python
f = open("sample.txt", "r")
data = f.read()
print(data)
f.close()
```

## Reading Line by Line — `readline()`
```python
f = open("sample.txt", "r")
print(f.readline())
print(f.readline())
f.close()
```

## Reading All Lines — `readlines()`
```python
f = open("sample.txt", "r")
lines = f.readlines()
print(lines)
f.close()
```

## Check if a File Exists
```python
import os
print(os.path.exists("sample.txt"))
```

---

## Delete a File

### `os.unlink()`

- os.unlink() is used to delete a file from the system.
- It works exactly like os.remove() — both perform the same action.

### Example:
```python
import os
os.unlink("sample.txt")
```

> ✔ Deletes the file named sample.txt
> ✔ Raises an error if the file does not exist

### `os.remove()`

```python
import os
os.remove("sample.txt")
```

- Difference Between `os.remove()` and `os.unlink()`
- There is no difference in practical use — both delete files.
- `os.remove()` → more commonly used
- `os.unlink()` → older name, same function
- Both cannot delete folders. For folders, use:
- `os.rmdir()` → for empty directories
- `shutil.rmtree()` → for directories with files

---

## Create a New Folder
```python
import os
os.mkdir("new_folder")
```

---

## Remove a Folder
```python
import os
os.rmdir("new_folder")
```

---

## 📘 *Next step (Day 24):*  

I’ll explore **Math Module**.