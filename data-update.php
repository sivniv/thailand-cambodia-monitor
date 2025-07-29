<?php
/**
 * Simple PHP script to update the embedded data in HTML files
 * This is for users who prefer a web interface for updates
 */

// Configuration
$HTML_FILES = [
    'index.html',
    'timeline.html'
];

// Sample data structure - modify this to update content
$siteData = [
    'stats' => [
        'totalArticles' => 3,
        'todayArticles' => 3,
        'activeSources' => 3,
        'pendingAnalysis' => 0,
        'conflictAnalytics' => [
            'currentTensionLevel' => 6,
            'totalCasualties' => 0,
            'affectedPopulation' => 5000,
            'diplomaticMeetings' => 1,
            'riskAssessment' => 4
        ]
    ],
    'articles' => [
        [
            'id' => 'article_001',
            'title' => 'Thailand-Cambodia Border Tensions Rise Over Temple Dispute',
            'summary' => 'Border tensions escalate over temple dispute with increased military presence',
            'publishedAt' => '2025-07-28T10:30:00Z',
            'source' => ['name' => 'Reuters', 'type' => 'NEWS_ARTICLE', 'url' => 'https://reuters.com'],
            'tags' => ['border-dispute', 'temple', 'military'],
            'aiAnalysis' => [
                'conflictRelevance' => 8,
                'importance' => 4,
                'sentiment' => 'negative'
            ]
        ]
        // Add more articles here
    ],
    'timeline' => [
        [
            'id' => 'event_001',
            'title' => 'Temple Dispute Escalation',
            'description' => 'Military buildup near Preah Vihear temple following diplomatic disagreements',
            'eventDate' => '2025-07-28T10:30:00Z',
            'importance' => 4,
            'source' => 'Reuters'
        ]
        // Add more timeline events here
    ]
];

function updateHtmlData($filePath, $newData) {
    if (!file_exists($filePath)) {
        return "Error: File $filePath not found";
    }
    
    $content = file_get_contents($filePath);
    
    // Find and replace the siteData object
    $pattern = '/const siteData = \{.*?\};/s';
    $replacement = 'const siteData = ' . json_encode($newData, JSON_PRETTY_PRINT | JSON_UNESCAPED_SLASHES) . ';';
    
    $newContent = preg_replace($pattern, $replacement, $content);
    
    if ($newContent === null) {
        return "Error: Could not update data in $filePath";
    }
    
    if (file_put_contents($filePath, $newContent) === false) {
        return "Error: Could not write to $filePath";
    }
    
    return "Successfully updated $filePath";
}

// Handle form submission
if ($_POST && isset($_POST['update_data'])) {
    $results = [];
    
    foreach ($HTML_FILES as $file) {
        $result = updateHtmlData($file, $siteData);
        $results[] = $result;
    }
    
    $message = implode('<br>', $results);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Update Tool - Thailand-Cambodia Monitor</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gray-50 py-8">
    <div class="max-w-4xl mx-auto px-4">
        <div class="bg-white rounded-lg shadow p-6">
            <h1 class="text-2xl font-bold text-gray-900 mb-6">Website Data Update Tool</h1>
            
            <?php if (isset($message)): ?>
                <div class="mb-6 p-4 bg-green-100 border border-green-400 text-green-700 rounded">
                    <?php echo $message; ?>
                </div>
            <?php endif; ?>
            
            <form method="POST" class="space-y-6">
                <div>
                    <h2 class="text-lg font-semibold text-gray-900 mb-4">Current Data Structure</h2>
                    <div class="bg-gray-100 p-4 rounded-lg">
                        <pre class="text-sm text-gray-800 overflow-x-auto"><?php echo json_encode($siteData, JSON_PRETTY_PRINT); ?></pre>
                    </div>
                </div>
                
                <div>
                    <h3 class="text-md font-semibold text-gray-900 mb-2">Instructions:</h3>
                    <ul class="text-sm text-gray-600 space-y-1 mb-4">
                        <li>• Edit the $siteData array in this PHP file to update content</li>
                        <li>• Click "Update Website Data" to apply changes to HTML files</li>
                        <li>• Articles and timeline events will be automatically updated</li>
                        <li>• Make sure to backup files before updating</li>
                    </ul>
                </div>
                
                <button type="submit" name="update_data" 
                        class="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors">
                    Update Website Data
                </button>
            </form>
            
            <div class="mt-8 border-t pt-6">
                <h3 class="text-lg font-semibold text-gray-900 mb-4">Quick Actions</h3>
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <a href="index.html" 
                       class="block p-4 bg-blue-50 rounded-lg hover:bg-blue-100 transition-colors">
                        <h4 class="font-medium text-blue-900">View Website</h4>
                        <p class="text-sm text-blue-700">Open the main website</p>
                    </a>
                    <a href="timeline.html" 
                       class="block p-4 bg-green-50 rounded-lg hover:bg-green-100 transition-colors">
                        <h4 class="font-medium text-green-900">View Timeline</h4>
                        <p class="text-sm text-green-700">Open the timeline page</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>