# 🚀 GitHub Pages Deployment Guide

## 📋 Quick Deployment Steps:

### Step 1: Create GitHub Repository
1. **Go to GitHub.com** and create a new repository
2. **Repository name**: `thailand-cambodia-monitor` (or your preferred name)
3. **Make it public** (required for free GitHub Pages)
4. **Don't initialize** with README (we have files already)

### Step 2: Upload Your Files
```bash
# Navigate to the HTML folder
cd NewsAIAgent-HTML

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial deployment of Thailand-Cambodia Conflict Monitor"

# Add your GitHub repository as remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/thailand-cambodia-monitor.git

# Push to GitHub
git push -u origin main
```

### Step 3: Enable GitHub Pages
1. **Go to your repository** on GitHub
2. **Click Settings** tab
3. **Scroll to Pages** section (left sidebar)
4. **Source**: Deploy from a branch
5. **Branch**: Select `main`
6. **Folder**: Select `/ (root)`
7. **Click Save**

### Step 4: Wait for Deployment
- GitHub will show: **"Your site is live at https://YOUR_USERNAME.github.io/thailand-cambodia-monitor/"**
- Takes 2-10 minutes for first deployment
- Green checkmark when ready ✅

## 🌐 **Your Live Website:**
```
https://YOUR_USERNAME.github.io/thailand-cambodia-monitor/
```

## 🔄 **Future Updates:**

### Method 1: Direct GitHub Edit
1. **Go to your repository**
2. **Click on `index.html`**
3. **Click the pencil icon** (Edit this file)
4. **Make changes** to the `siteData` object
5. **Commit changes** at bottom
6. **Site updates automatically** in 1-2 minutes

### Method 2: Local Updates
```bash
# Make changes to your local files
# Then push updates:
git add .
git commit -m "Updated content with latest news"
git push origin main
```

## ⚙️ **Automatic Deployment:**
- Included GitHub Actions workflow (`.github/workflows/deploy.yml`)
- **Automatic deployment** on every push to main branch
- **No manual steps** needed after setup

## 🎯 **SEO & Social Media Ready:**
Your website includes:
- ✅ **Meta tags** for search engines
- ✅ **Open Graph** tags for Facebook sharing
- ✅ **Twitter Card** support
- ✅ **Mobile responsive** design
- ✅ **Fast loading** (static HTML)

## 📊 **Features Included:**
- ✅ **Real-time conflict analytics**
- ✅ **Interactive timeline**
- ✅ **Mobile-friendly interface**
- ✅ **Professional styling**
- ✅ **Easy content updates**

## 🔧 **Customization:**

### Update Site URL:
In `index.html`, change these lines:
```html
<meta property="og:url" content="https://YOUR_USERNAME.github.io/thailand-cambodia-monitor/">
<meta property="twitter:url" content="https://YOUR_USERNAME.github.io/thailand-cambodia-monitor/">
```

### Add Google Analytics:
Replace `G-XXXXXXXXXX` with your actual tracking ID:
```html
<script async src="https://www.googletagmanager.com/gtag/js?id=G-YOUR-TRACKING-ID"></script>
```

### Update Content:
Edit the `siteData` object in `index.html`:
```javascript
const siteData = {
    stats: {
        totalArticles: 5,  // Update this number
        // ... add new articles and events
    }
};
```

## 🚨 **Important Notes:**

### Repository Settings:
- ✅ **Must be public** for free GitHub Pages
- ✅ **Repository name** becomes part of URL
- ✅ **Branch must be `main`** or `gh-pages`

### File Requirements:
- ✅ **`index.html`** must be in root directory
- ✅ **All links** should be relative (no absolute paths)
- ✅ **Case-sensitive** file names

### Limitations:
- ⚠️ **No server-side processing** (PHP won't work)
- ⚠️ **Static files only** (perfect for our HTML version)
- ⚠️ **1GB storage limit**
- ⚠️ **100GB bandwidth per month**

## 🎉 **Success Checklist:**

After deployment, verify:
- [ ] **Main page loads**: `https://username.github.io/repo-name/`
- [ ] **Timeline works**: Click "Full Timeline" button
- [ ] **Mobile responsive**: Test on phone
- [ ] **Social sharing**: Test Facebook/Twitter preview
- [ ] **Analytics**: Check if Google Analytics is working

## 📞 **Troubleshooting:**

### "404 Page Not Found":
- Check repository is public
- Verify `index.html` is in root directory
- Wait 10 minutes after enabling Pages

### "Site Not Updating":
- Check GitHub Actions tab for deployment status
- Clear browser cache (Ctrl+F5)
- Wait a few minutes for propagation

### "Styles Missing":
- Check browser console for errors
- Ensure internet connection (Tailwind CSS via CDN)
- Verify HTML files weren't corrupted

## 🌟 **Pro Tips:**

### Performance:
- Website loads in **under 2 seconds**
- **Mobile-optimized** for all devices
- **SEO-friendly** for search engines

### Maintenance:
- **Update content monthly** for best SEO
- **Monitor GitHub Actions** for successful deployments
- **Backup your content** before major changes

### Analytics:
- Add **Google Analytics** for visitor tracking
- Monitor **Core Web Vitals** for performance
- Track **social media referrals**

---

## 🎯 **Next Steps After Deployment:**

1. **📝 Content Updates**: Regularly update articles and timeline events
2. **📊 Analytics Setup**: Configure Google Analytics for visitor insights  
3. **📱 Social Media**: Share your website URL on social platforms
4. **🔍 SEO**: Submit to Google Search Console for better indexing
5. **🔄 Automation**: Set up regular content update schedule

**🌐 Your Thailand-Cambodia Conflict Monitor is now live and accessible worldwide!**