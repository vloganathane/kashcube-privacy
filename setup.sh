#!/bin/bash
# Quick setup script for kashcube-privacy GitHub Pages repo

echo "🚀 Setting up kashcube-privacy repository..."
echo ""
echo "Please enter your GitHub username:"
read USERNAME

if [ -z "$USERNAME" ]; then
    echo "❌ Error: GitHub username is required"
    exit 1
fi

echo ""
echo "📋 Your URLs will be:"
echo "   Landing: https://$USERNAME.github.io/kashcube-privacy/"
echo "   Privacy: https://$USERNAME.github.io/kashcube-privacy/privacy.html"
echo "   Terms:   https://$USERNAME.github.io/kashcube-privacy/terms.html"
echo ""
echo "Proceed with setup? (y/n)"
read CONFIRM

if [ "$CONFIRM" != "y" ]; then
    echo "Setup cancelled"
    exit 0
fi

echo ""
echo "📦 Initializing git repository..."
git init

echo "📝 Adding files..."
git add .

echo "💾 Creating initial commit..."
git commit -m "Initial commit: Add privacy policy and terms for Kash Cube"

echo "🌿 Setting branch to main..."
git branch -M main

echo "🔗 Adding remote origin..."
git remote add origin "https://github.com/$USERNAME/kashcube-privacy.git"

echo ""
echo "✅ Local setup complete!"
echo ""
echo "📌 Next steps:"
echo "1. Create a new PUBLIC repository on GitHub:"
echo "   https://github.com/new"
echo "   Repository name: kashcube-privacy"
echo "   Description: Legal documents for Kash Cube app"
echo "   Visibility: PUBLIC (required for GitHub Pages)"
echo ""
echo "2. Push to GitHub:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   → Go to: https://github.com/$USERNAME/kashcube-privacy/settings/pages"
echo "   → Source: Deploy from a branch"
echo "   → Branch: main"
echo "   → Folder: / (root)"
echo "   → Click Save"
echo ""
echo "4. Wait 1-2 minutes, then add this URL to Play Console:"
echo "   https://$USERNAME.github.io/kashcube-privacy/privacy.html"
echo ""
