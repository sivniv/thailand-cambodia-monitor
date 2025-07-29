#!/bin/bash

# 🚀 GitHub Pages Deployment Script
# Thailand-Cambodia Conflict Monitor

echo "🌐 Thailand-Cambodia Conflict Monitor - GitHub Pages Deployment"
echo "================================================================"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed. Please install git first.${NC}"
    exit 1
fi

# Get user input
echo -e "${BLUE}📝 Please provide your GitHub details:${NC}"
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter your repository name (default: thailand-cambodia-monitor): " REPO_NAME
REPO_NAME=${REPO_NAME:-thailand-cambodia-monitor}

echo ""
echo -e "${YELLOW}📋 Summary:${NC}"
echo "GitHub Username: $GITHUB_USERNAME"
echo "Repository Name: $REPO_NAME"
echo "Repository URL: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo "Live Site URL: https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo ""

read -p "Continue with deployment? (y/n): " -n 1 -r
echo ""
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${RED}❌ Deployment cancelled.${NC}"
    exit 1
fi

echo -e "${BLUE}🔧 Initializing git repository...${NC}"

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    git init
    echo -e "${GREEN}✅ Git repository initialized${NC}"
else
    echo -e "${YELLOW}⚠️  Git repository already exists${NC}"
fi

# Update URLs in HTML files
echo -e "${BLUE}🔄 Updating URLs in HTML files...${NC}"
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    sed -i '' "s|https://sivniv.github.io/thailand-cambodia-monitor/|https://$GITHUB_USERNAME.github.io/$REPO_NAME/|g" index.html
    sed -i '' "s|https://sivniv.github.io/thailand-cambodia-monitor/|https://$GITHUB_USERNAME.github.io/$REPO_NAME/|g" timeline.html
else
    # Linux
    sed -i "s|https://sivniv.github.io/thailand-cambodia-monitor/|https://$GITHUB_USERNAME.github.io/$REPO_NAME/|g" index.html
    sed -i "s|https://sivniv.github.io/thailand-cambodia-monitor/|https://$GITHUB_USERNAME.github.io/$REPO_NAME/|g" timeline.html
fi
echo -e "${GREEN}✅ URLs updated${NC}"

# Add all files
echo -e "${BLUE}📁 Adding files to git...${NC}"
git add .

# Commit files
echo -e "${BLUE}💾 Committing files...${NC}"
git commit -m "🚀 Initial deployment of Thailand-Cambodia Conflict Monitor

- Complete HTML website with embedded data
- Interactive timeline with event filtering
- Mobile-responsive design
- SEO optimized with meta tags
- Social media sharing support
- GitHub Pages ready deployment"

# Add remote origin
echo -e "${BLUE}🔗 Adding GitHub remote...${NC}"
git remote remove origin 2>/dev/null || true  # Remove if exists
git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"

# Set main branch
git branch -M main

echo -e "${GREEN}✅ Repository prepared for deployment${NC}"
echo ""
echo -e "${YELLOW}📤 Next steps:${NC}"
echo "1. Create repository on GitHub: https://github.com/new"
echo "2. Repository name: $REPO_NAME"
echo "3. Make it PUBLIC (required for free GitHub Pages)"
echo "4. Don't initialize with README"
echo "5. After creating repository, run:"
echo -e "${BLUE}   git push -u origin main${NC}"
echo ""
echo -e "${YELLOW}⚠️  Manual Steps Required:${NC}"
echo "1. Go to your repository settings"
echo "2. Scroll to 'Pages' section"
echo "3. Source: Deploy from a branch"
echo "4. Branch: main"
echo "5. Folder: / (root)"
echo "6. Click Save"
echo ""
echo -e "${GREEN}🌐 Your live website will be available at:${NC}"
echo -e "${BLUE}https://$GITHUB_USERNAME.github.io/$REPO_NAME/${NC}"
echo ""
echo -e "${GREEN}🎉 Deployment preparation complete!${NC}"

# Ask if user wants to push now
echo ""
read -p "Push to GitHub now? (requires repository to be created first) (y/n): " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${BLUE}📤 Pushing to GitHub...${NC}"
    if git push -u origin main; then
        echo -e "${GREEN}✅ Successfully pushed to GitHub!${NC}"
        echo -e "${GREEN}🌐 Your website will be live in 2-10 minutes at:${NC}"
        echo -e "${BLUE}https://$GITHUB_USERNAME.github.io/$REPO_NAME/${NC}"
        echo ""
        echo -e "${YELLOW}📋 Don't forget to enable GitHub Pages in repository settings!${NC}"
    else
        echo -e "${RED}❌ Push failed. Make sure:${NC}"
        echo "1. Repository exists on GitHub"
        echo "2. Repository is public"
        echo "3. You have push permissions"
        echo "4. You're authenticated with GitHub"
    fi
else
    echo -e "${YELLOW}📝 Remember to push when ready:${NC}"
    echo -e "${BLUE}git push -u origin main${NC}"
fi

echo ""
echo -e "${GREEN}🎯 Deployment Summary:${NC}"
echo "Repository: https://github.com/$GITHUB_USERNAME/$REPO_NAME"
echo "Live Site: https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo "Files ready: ✅"
echo "Git configured: ✅"
echo "URLs updated: ✅"
echo ""
echo -e "${BLUE}📚 For detailed instructions, see: GITHUB-PAGES-DEPLOYMENT.md${NC}"