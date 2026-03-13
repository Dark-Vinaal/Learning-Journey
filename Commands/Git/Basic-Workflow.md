## 🔄 2. The Basic Workflow (Save & Sync)

- The daily cycle of staging, committing, and pushing code.

---

### 📌 `git init`

**Purpose:** Initializes a new local Git repository.

> Creates a hidden `.git` folder in your current directory to begin tracking changes.

```bash
git init
```

---

### 📌 `git clone`

**Purpose:** Creates a local copy of a remote repository.

```bash
git clone [repository url](https://github.com/username/repository.git)
```

---

### 📌 `git status`

**Purpose:** Shows the state of the working directory and staging area.

-   **Usage:** Used to see which files are modified, staged, or untracked.
    
```bash
git status
```

---

### 📌 `git add`

**Purpose:** Moves changes from the working directory to the **Staging Area**.

```bash
git add .          # Stages all changes
git add filename   # Stages a specific file
```

---

### 📌 `git commit`

**Purpose:** Saves the staged snapshot to the project history.

```bash
git commit -m "Brief descriptive message"
```

---

### 📌 `git push`

**Purpose:** Uploads local commits to a remote repository (like GitHub).

```bash
git push origin branch-name
```

> **Note:** Branch name can be either main or master most commonly.. If not then add you desired branch name.

---

### 📌 `git push -u`

**Purpose:** Uploads local commits to a remote repository (like GitHub) and `-u` Stands for `--set-upstream`. This is the key part of your question.

```bash
git push -u origin branch-name
```

> **Note:** Branch name can be either main or master most commonly.. If not then add you desired branch name.

---

### 📌 `git pull`

**Purpose:** Fetches changes from the remote and merges them into your current branch.

> **Note:** This is essentially `git fetch` + `git merge`.

```bash
git pull origin branch-name
```

> **Note:** Branch name can be either main or master most commonly.. If not then add you desired branch name.

---

### 📌 `git pull --allow-unrelated-histories`

**Purpose:** Fetches changes from the remote and merges them into your current branch.

- The `--allow-unrelated-histories` flag in Git forces the `git merge` or `git pull` command to combine two branches that do not share a common commit history. By default, Git prevents merging histories that it sees as completely separate to avoid potential errors and confusion

> **Note:** This is essentially `git fetch` + `git merge`.

```bash
git pull origin <branch-name> --allow-unrelated-histories
```

> **Note:** Branch name can be either main or master most commonly.. If not then add you desired branch name.

---

### `📌 git push/pull --force/-f`

**Purpose:** Uploads or downloads local commits to a remote repository forcefully with no obligations.

```bash
git push origin branch-name -f
```

```bash
git push origin branch-name --force
```
```bash
git pull origin branch-name -f
```
```bash
git pull origin branch-name --force
```

> **Note:** Branch name can be either main or master most commonly.. If not then add you desired branch name.

---

### `📌 git fetch`

**Purpose:** Downloads changes from remote without merging.

- Safer than pull; allows inspection before merging.

```bash
git fetch
```

---
