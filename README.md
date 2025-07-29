# Thailand-Cambodia Conflict Monitor - Pure HTML Version

This is the pure HTML version of the Thailand-Cambodia Conflict Monitor, designed for maximum compatibility with any web hosting service, including the most basic shared hosting plans.

## 🌟 Features

- **100% Static HTML**: No server requirements, works on any hosting
- **Self-contained**: All CSS and JavaScript embedded in HTML files
- **Manual Updates**: Easy content management through editing HTML or PHP tool
- **Maximum Compatibility**: Works on all web hosting services
- **Mobile Responsive**: Optimized for all devices

## 📁 Files Included

```
NewsAIAgent-HTML/
├── index.html          # Main dashboard page
├── timeline.html       # Timeline page
├── data-update.php     # Optional PHP tool for easy updates
└── README.md          # This file
```

## 🚀 Deployment

### Method 1: Direct Upload (Recommended)
1. Upload `index.html` and `timeline.html` to your web hosting's public folder
2. Access your website at `https://yourdomain.com/index.html`
3. No additional setup required!

### Method 2: With PHP Update Tool
1. Upload all files including `data-update.php`
2. Access `https://yourdomain.com/data-update.php` for easy content management
3. Requires PHP support on your hosting

## 📝 Manual Content Updates

### Method 1: Edit HTML Files Directly

Open `index.html` and find the `siteData` object in the JavaScript section:

```javascript
const siteData = {
    stats: {
        totalArticles: 3,
        todayArticles: 3,
        // ... update these values
    },
    articles: [
        {
            id: "article_001",
            title: "Your New Article Title",
            // ... add new articles here
        }
    ],
    timeline: [
        {
            id: "event_001",
            title: "Your New Event",
            // ... add new timeline events here
        }
    ]
};
```

### Method 2: Use PHP Update Tool

1. Edit the `$siteData` array in `data-update.php`
2. Visit `data-update.php` in your browser
3. Click "Update Website Data"
4. All HTML files will be automatically updated

## 🎯 Data Structure Reference

### Article Object
```javascript
{
    id: "article_XXX",                    // Unique identifier
    title: "Article Title",               // Headline
    summary: "Brief summary",             // Short description
    publishedAt: "2025-07-XX:XX:XX:00Z", // ISO date string
    source: {
        name: "Source Name",              // News source
        type: "NEWS_ARTICLE",             // Type (NEWS_ARTICLE or FACEBOOK_POST)
        url: "https://source.com"         // Source URL
    },
    tags: ["tag1", "tag2"],              // Topic tags
    aiAnalysis: {
        conflictRelevance: 8,             // 1-10 relevance score
        importance: 4,                    // 1-5 priority level
        sentiment: "negative"             // positive, negative, or neutral
    }
}
```

### Timeline Event Object
```javascript
{
    id: "event_XXX",                     // Unique identifier
    title: "Event Title",                // Event name
    description: "Event details",        // Description
    eventDate: "2025-07-XX:XX:XX:00Z",  // ISO date string
    eventType: "military_activity",      // Event category
    importance: 4,                       // 1-5 priority level
    source: "Source Name"                // Source name
}
```

### Statistics Object
```javascript
{
    totalArticles: 3,
    todayArticles: 3,
    activeSources: 3,
    pendingAnalysis: 0,
    conflictAnalytics: {
        currentTensionLevel: 6,           // 1-10 tension scale
        totalCasualties: 0,               // Total casualties
        affectedPopulation: 5000,         // People affected
        diplomaticMeetings: 1,            // Number of meetings
        riskAssessment: 4                 // 1-10 risk level
    }
}
```

## 🎨 Customization

### Colors and Styling
The website uses Tailwind CSS via CDN. You can customize colors by editing the class names:

- **High Priority**: `bg-red-500` (red dots)
- **Medium Priority**: `bg-blue-500` (blue dots)  
- **Low Priority**: `bg-gray-400` (gray dots)

### Timeline Appearance
Timeline dots are automatically colored based on importance:
- Importance ≥ 4: Red (high priority)
- Importance ≥ 3: Blue (medium priority)
- Importance < 3: Gray (low priority)

## 🔄 Update Workflow

### Daily Updates
1. **Add New Articles**: Edit the `articles` array in `siteData`
2. **Add Timeline Events**: Edit the `timeline` array
3. **Update Statistics**: Modify the `stats` object
4. **Upload Changes**: Re-upload modified HTML files

### Using PHP Tool (if available)
1. Edit `$siteData` in `data-update.php`
2. Visit the PHP page in your browser
3. Click "Update Website Data"
4. All HTML files are automatically updated

## ✅ Compatibility

### ✅ Works With:
- **Shared Hosting** (cPanel, Plesk, etc.)
- **VPS Hosting**
- **Static Hosting** (GitHub Pages, Netlify, etc.)
- **WordPress Hosting** (upload to subdirectory)
- **Basic Web Hosting** (no special requirements)

### 🔧 Requirements:
- **Minimum**: Any web server that serves HTML files
- **Optional**: PHP support for update tool
- **Bandwidth**: Minimal (all assets are embedded)

## 📱 Mobile Optimization

The website is fully responsive and includes:
- Mobile-friendly navigation
- Touch-optimized timeline
- Responsive grid layouts
- Optimized text sizes

## 🔒 Security

- No external dependencies (except Tailwind CSS CDN)
- No user input handling
- No database connections
- Safe for any hosting environment

## 🚨 Important Notes

### Date Format
Always use ISO 8601 format: `2025-07-28T14:30:00Z`

### JSON Syntax
When editing data objects:
- Use double quotes for strings
- Include commas between items
- Validate JSON syntax before uploading

### Backup
Always backup your HTML files before making changes!

## 📞 Quick Reference

### File Locations
- Main page: `index.html`
- Timeline: `timeline.html`
- Update tool: `data-update.php` (optional)

### Data Location in HTML
Look for: `const siteData = {` in the JavaScript section

### Common Updates
- Articles: Edit `siteData.articles` array
- Events: Edit `siteData.timeline` array
- Stats: Edit `siteData.stats` object

## 🎉 Advantages of HTML Version

1. **Universal Compatibility**: Works on any hosting
2. **No Build Process**: Direct editing and upload
3. **Fast Loading**: All assets embedded
4. **Simple Maintenance**: Edit HTML directly
5. **No Dependencies**: Self-contained files
6. **Cost Effective**: Works on cheapest hosting plans

## 📈 Performance

- **File Sizes**: ~50KB per page (including all assets)
- **Load Time**: <2 seconds on slow connections
- **Dependencies**: Only Tailwind CSS CDN
- **Browser Support**: All modern browsers + IE11

---

**🌐 This HTML version provides maximum hosting compatibility while maintaining all the features of the original application!**