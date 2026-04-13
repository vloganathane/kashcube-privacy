# GitHub Setup Guide — Kash Cube Privacy Pages

## Quick Setup (Automated)

```bash
cd /Users/loganathanev/Documents/vloganathane/daily-apps/2026/02/24/kashcube-privacy
./setup.sh
```

The script will guide you through the process.

---

## Manual Setup

### Step 1: Create GitHub Repository

1. Go to: https://github.com/new
2. Fill in:
   - **Repository name:** `kashcube-privacy`
   - **Description:** `Legal documents for Kash Cube app`
   - **Visibility:** ✅ **PUBLIC** (required for GitHub Pages)
   - **Initialize:** ❌ Do NOT add README, .gitignore, or license (we have them)
3. Click **Create repository**

### Step 2: Push Files to GitHub

Using your GitHub username (`vloganathane`):

```bash
cd /Users/loganathanev/Documents/vloganathane/daily-apps/2026/02/24/kashcube-privacy

# Initialize git
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Add privacy policy and terms for Kash Cube"

# Set branch to main
git branch -M main

# Add remote
git remote add origin https://github.com/vloganathane/kashcube-privacy.git

# Push to GitHub
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository: `https://github.com/vloganathane/kashcube-privacy`
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar under "Code and automation")
4. Under **Source**:
   - Select: **Deploy from a branch**
   - Branch: **main**
   - Folder: **/ (root)**
5. Click **Save**
6. Wait 1-2 minutes for deployment

### Step 4: Verify Deployment

Visit these URLs:

- 🏠 Landing page: `https://vloganathane.github.io/kashcube-privacy/`
- 🔒 Privacy policy: `https://vloganathane.github.io/kashcube-privacy/privacy.html`
- 📋 Terms of use: `https://vloganathane.github.io/kashcube-privacy/terms.html`

### Step 5: Add to Play Store

1. Go to [Google Play Console](https://play.google.com/console)
2. Select **Kash Cube** app
3. Navigate to: **Store settings** → **Privacy Policy**
4. Paste: `https://vloganathane.github.io/kashcube-privacy/privacy.html`
5. Click **Save**

---

## Troubleshooting

### 404 Error after enabling Pages
- Wait 2-3 minutes for deployment
- Check that you selected **main** branch and **/ (root)** folder
- Verify repository is **public** (Settings → General → Visibility)

### Files not showing
- Run `git status` to check if all files are committed
- Run `git push` to ensure files are on GitHub
- Check the repository on GitHub to see if files are visible

### Wrong URL format
- GitHub Pages URL format: `https://<username>.github.io/REPO-NAME/file.html`
- Example: `https://johndoe.github.io/kashcube-privacy/privacy.html`
- Do NOT include `.git` in the URL

---

## File Structure

```
kashcube-privacy/
├── .gitignore        # Git ignore rules
├── README.md         # Repository documentation
├── SETUP_GUIDE.md    # This file
├── setup.sh          # Automated setup script
├── index.html        # Landing page
├── privacy.html      # Privacy policy (← Play Store URL)
└── terms.html        # Terms of use
```

---

## Updating Documents

When you need to update privacy policy or terms:

```bash
cd /Users/loganathanev/Documents/vloganathane/daily-apps/2026/02/24/kashcube-privacy

# Edit the files (privacy.html, terms.html)

# Commit changes
git add .
git commit -m "Update privacy policy - [describe change]"
git push

# Wait 1-2 minutes for GitHub Pages to rebuild
```

Changes will be live at the same URLs automatically.

---

## Support

If you encounter issues:
1. Check [GitHub Pages documentation](https://docs.github.com/pages)
2. Verify repository is public
3. Ensure files are valid HTML (no syntax errors)
4. Check GitHub Actions tab for build errors
