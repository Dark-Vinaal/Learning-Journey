## 🔍 4. Inspection & Debugging

- Commands for viewing history and finding where things went wrong.

---

### 📌 `git log`

**Purpose:** Shows the commit history.

```bash
git log --oneline   # Compact view
git log -p          # Shows actual code changes in history
```

---

### 📌 `git diff`

**Purpose:** Shows specific code differences between files or commits.

```bash
git diff            # Working directory vs. Staging
git diff --staged   # Staged changes vs. Last commit
```

---

### 📌 `git blame`

**Purpose:** Shows who modified each line of a file and when.

```bash
git blame filename.js
```

---

### 📌 `git reflog`

**Purpose:** Lists every movement of the HEAD. Great for recovering "lost" commits.

```bash
git reflog
```

---
