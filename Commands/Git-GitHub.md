# 🧩 Git & GitHub Commands Guide
    
- A complete reference of commonly used Git and GitHub commands, organized by workflow stages.
    
---

## 🏗️ 1. Setup & Configuration

- These commands are used when starting a project or setting up your identity.
    
### 📌 `git config`

**Purpose:** Sets your user identity and global preferences.
    
```bash
git config --global user.name "Your Name"
git config --global user.email "you@email.com"
```
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
git clone [https://github.com/username/repository.git](https://github.com/username/repository.git)
```

---

## 🔄 2. The Basic Workflow (Save & Sync)

- The daily cycle of staging, committing, and pushing code.

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

> **Note:** Branch name can be either <main> or <master> most commonly.. If not then add you desired branch name.

---

### 📌 `git push -u`

**Purpose:** Uploads local commits to a remote repository (like GitHub) and `-u` Stands for `--set-upstream`. This is the key part of your question.

```bash
git push -u origin branch-name
```

> **Note:** Branch name can be either <main> or <master> most commonly.. If not then add you desired branch name.

---

### 📌 `git pull`

**Purpose:** Fetches changes from the remote and merges them into your current branch.

> **Note:** This is essentially `git fetch` + `git merge`.

```bash
git pull origin branch-name
```

> **Note:** Branch name can be either <main> or <master> most commonly.. If not then add you desired branch name.

---

## 🌿 3. Branching & Merging

Used for working on features or bug fixes without breaking the main code.

![]()

---

### 📌 `git branch`

**Purpose:** Lists, creates, or deletes branches.

```bash
git branch                        # List branches
git branch new-feature            # Create a new branch
git branch -d name                # Delete a branch
git branch -M main                # Rename current branch to main
```

---

### 📌 `git checkout` / `git switch`

**Purpose:** Switches between branches or creates new ones.

```bash
git checkout branch-name      # Switch to existing
git checkout -b new-feature   # Create and switch simultaneously
```

---

### 📌 `git merge`

**Purpose:** Combines the history of one branch into another.

```bash
git merge feature-branch      # Merges feature into current branch
```

---

## 🔍 4. Inspection & Debugging

- Commands for viewing history and finding where things went wrong.

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

## 🛠️ 5. Undoing & Rewriting History

**Warning:** Use these carefully, especially on shared repositories.

### 📌 `git reset`

**Purpose:** Moves the current branch head to a specific commit.

-   **`--soft`**: Keeps your changes staged (removes the commit only).
    
-   **`--hard`**: **DANGER.** Deletes all changes permanently and matches the target commit.
    
```bash
    git reset --soft HEAD~1
    git reset --hard HEAD~1
```

---

### 📌 `git revert`

**Purpose:** Creates a **new** commit that does the exact opposite of a previous commit.

> This is the "safe" way to undo changes in shared repos because it doesn't erase history.

```bash
git revert commit_id
```

---

### 📌 `git stash`

**Purpose:** Temporarily "parks" your uncommitted changes so you can switch branches.

```bash
git stash      # Save changes
git stash pop  # Bring them back
```

---

### 📌 `git rebase`

**Purpose:** Reapplies commits on top of another base tip for a linear history.

-   **Interactive (`-i`)**: Allows squashing or reordering commits.
    

```bash
git rebase main
git rebase -i HEAD~3
```

---

### 📌 `git cherry-pick`

**Purpose:** Applies a specific commit from one branch onto your current branch.

```bash
git cherry-pick <commit_id>
```

---

## 🚀 6. Advanced & Maintenance

### 📌 `git remote`

**Purpose:** Manages connections to remote repositories.

```bash
git remote -v                  # List remotes
git remote add origin <url>    # Link local to remote
```

---

### 📌 `git clean`

**Purpose:** Removes untracked files from the working directory.

```bash
git clean -fd   # -f for files, -d for directories
```

---

### 📌 `git tag`

**Purpose:** Creates version labels (e.g., v1.0).

```bash
git tag v1.0
```

---

### 📌 `git push --force-with-lease`

**Purpose:** Safer version of force push; only overwrites if no one else has pushed.

```bash
git push --force-with-lease
```

---

## 🌐 7. GitHub-Specific Workflows

These are platform features rather than core Git terminal commands.

-   **Forking:** Copying a repo to your own account to modify it independently.
    
-   **Pull Request (PR):** Proposing your changes to the original repository for review.
    
-   **Issues:** A dashboard for tracking bugs, tasks, and feature requests.
    
-   **GitHub Actions:** Automating tests, builds, and deployments (CI/CD).

---
