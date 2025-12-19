# 🧩 Git & GitHub Commands Guide
    
- A complete reference of commonly used Git and GitHub commands, organized by workflow stages.

![](https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQ0P7lByzwTvgQFfp-ckaKwsPqZKjvgXc7Sjbv6i-e7Ph-bu8YFQWU92Sd3ZIVo5vbuEGrOLBBi5qlfKBHa7vdgN_lr8RdGYHnSkksqz5g6x_1hr7s)

---

## 🏗️ 1. Setup & Configuration

- These commands are used when starting a project or setting up your identity.

### 📌 `git --version`
**Description:** Checks which version of Git is installed on your system.
```bash
git --version
```

> Current git version 2.50.1

---

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
git clone [repository url](https://github.com/username/repository.git)
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

### `📌 git fetch`

**Purpose:** Downloads changes from remote without merging.

- Safer than pull; allows inspection before merging.

```bash
git fetch
```

---

## 🌿 3. Branching & Merging

Used for working on features or bug fixes without breaking the main code.

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

## 🧹 6. Advanced & File, Repo Maintenance

### 📌 `git rm`

**Purpose:** Removes files from Git tracking and the working directory.

```bash
git rm <filename>
```

---

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

### 📌 `git archive`

**Purpose:** Creates a compressed archive of the repository.

```bash
git archive --format=zip HEAD > project.zip
```

---

### 📌 `git submodule`

**Purpose:** Adds another Git repository inside your repo.

```bash
git submodule add <repo_url> <path>
```

---

### 📌 `git push --force`

**Purpose:** Overwrites remote branch with local history.

> ⚠️ Dangerous on shared branches.

```bash
git push --force
```

---

### 📌 `git push --force-with-lease`

**Purpose:** Safer version of force push; only overwrites if no one else has pushed.

```bash
git push --force-with-lease
```

---

## 🚩 Detailed Flag Breakdown

### `-m `(Message)

- Used almost exclusively with git commit. It allows you to write the commit message directly in the command line instead of opening a text editor (like Vim or Notepad).

#### Example: 
```bash
git commit -m "Fix login bug"
```

---

### `-v` (Verbose)

- Tells Git to give you more details about what it’s doing.
- In git remote `-v`: Shows the actual URLs (fetch and push) linked to the remote names.
- In git commit `-v`: Shows the "diff" of what you are committing inside the editor.

---

### `-u` (Set Upstream / Tracking)

- Used with git push to link your local branch to a remote branch. Once you use this once, you can just type git push or git pull without specifying the remote name or branch in the future.

#### Example: 
```bash
git push -u origin main
```

---

### `-M` (Move / Rename)

- Used when branching to force a rename of a branch. This is most commonly seen when developers switch the default branch name from master to main.

#### Example: 
```bash
git branch -M main
```

---

### `-f` or `--force` (Force)

- Forces Git to complete an action even if it thinks it’s dangerous or will cause data loss.
- In git push -f: Overwrites the remote history with your local history.
- In git clean -f: Actually deletes the untracked files.

> **Warning:** Use this sparingly; it can delete code permanently.

---

### `-d` or `-D` (Delete)

- Used with git branch to delete a branch.
- `-d`: Safe delete (only deletes if the branch has been merged).
- `-D`: Force delete (deletes regardless of merge status).

---

### `-a` (All / Annotated)

- In git commit `-a`: Automatically stages files that have been modified and deleted, then commits them (skips the git add step for tracked files).
- In git tag `-a`: Creates an "annotated" tag which includes the creator's name, date, and a message.

---

| Flag | Meaning | Common Command | Purpose |
|------|---------|----------------|---------|
|  -m  | Message | git commit     | Adds a description to your save point. |
|  -u  | Upstream| git push       | Remembers your branch preferences for next time. |
|  -v  | Verbose | git remote     | Provides extra details and URLs. |
|  -f  | Force   | git push       | Overrides safety warnings (Dangerous!). |
|  -M  | Move    | git branch     | Renames the current branch. |
|  -a  | All / Annotated |git commit / git tag | Includes all changes or extra metadata. |
|  -p  | Patch | git add / git log | Review changes line-by-line. |

---

## 🌐 8. GitHub-Specific Workflows

These are platform features rather than core Git terminal commands.

- Forking
  - Creates a copy of another user’s repository in your account.
  - Used for contributing to Open Source.

- Pull Request (PR)
  - Requests to merge changes into another branch/repository.
  - Enables code review and discussion.

- Issues & Actions
  - Issues: Tracks bugs, tasks, and feature requests.
  - Actions: Automates CI/CD (Testing, Deployment).

---

## 🤖 9. GitHub CLI (gh) Commands

- The GitHub CLI allows you to do GitHub actions (Pull Requests, Issues) without leaving the terminal.

### 📌 Authentication & Setup

- Log in to your GitHub account
```bash
gh auth login
```

- Check login status
```bash
gh auth status
```

---

### 📌 Working with Repos

- Create a new repo on GitHub
```bash
gh repo create
```

- Fork a repo to your account
```bash
gh repo fork
```

- Open the current repo in your browser
```bash
gh repo view --web
```

---

### 📌 Pull Requests (PRs)

- Create a Pull Request from your branch
```bash
gh pr create
```

- List all open PRs in the repo
```bash
gh pr list
```

- Switch to the code in PR number X
```bash
gh pr checkout <num>
```

- Merge the current PR
```bash
gh pr merge
```

---

### 📌 Issues

- View active bugs/tasks
```bash
gh issue list
```

- Report a new bug/task
```bash        
gh issue create
```

---

## 🧠 Summary

**Git** = Local version control (tracks history).

**GitHub** = Remote hosting (collaboration & automation).

**Workflow** : `add` → `commit` → `push`.

**GitHub CLI** : Terminal Efficiency → `gh pr create`, `gh repo view`

---
