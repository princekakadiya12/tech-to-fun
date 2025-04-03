# Create blog directory if it doesn't exist
New-Item -ItemType Directory -Force -Path "images/blog"

# Define image URLs and their corresponding filenames
$images = @{
    "ai-ml.jpg" = "https://images.unsplash.com/photo-1677442136019-21780ecad995?w=800&auto=format&fit=crop&q=60"
    "web-dev.jpg" = "https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=800&auto=format&fit=crop&q=60"
    "cloud-computing.jpg" = "https://images.unsplash.com/photo-1544197150-b99a580bb7a8?w=800&auto=format&fit=crop&q=60"
    "cybersecurity.jpg" = "https://images.unsplash.com/photo-1550751827-4bd374c3f58b?w=800&auto=format&fit=crop&q=60"
    "data-science.jpg" = "https://images.unsplash.com/photo-1551288049-bebda4e38f41?w=800&auto=format&fit=crop&q=60"
    "blockchain.jpg" = "https://images.unsplash.com/photo-1620321023374-d1a68fbc720d?w=800&auto=format&fit=crop&q=60"
    "iot.jpg" = "https://images.unsplash.com/photo-1558346547-4439467bd1d5?w=800&auto=format&fit=crop&q=60"
    "ar-vr.jpg" = "https://images.unsplash.com/photo-1622979135225-d2ba269cf1ac?w=800&auto=format&fit=crop&q=60"
    "fintech.jpg" = "https://images.unsplash.com/photo-1460925895917-afdab827c52f?w=800&auto=format&fit=crop&q=60"
    "healthtech.jpg" = "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?w=800&auto=format&fit=crop&q=60"
    "edtech.jpg" = "https://images.unsplash.com/photo-1522202176988-66273c2fd55f?w=800&auto=format&fit=crop&q=60"
    "greentech.jpg" = "https://images.unsplash.com/photo-1497435334941-8c899ee9e8e9?w=800&auto=format&fit=crop&q=60"
    "spacetech.jpg" = "https://images.unsplash.com/photo-1446776811953-b23d57bd21aa?w=800&auto=format&fit=crop&q=60"
    "android.jpg" = "https://images.unsplash.com/photo-1611162617474-5b21e879e113?w=800&auto=format&fit=crop&q=60"
    "ios.jpg" = "https://images.unsplash.com/photo-1512941937669-90a1b58e7e9c?w=800&auto=format&fit=crop&q=60"
    "game-dev.jpg" = "https://images.unsplash.com/photo-1511512578047-dfb367046420?w=800&auto=format&fit=crop&q=60"
    "devops.jpg" = "https://images.unsplash.com/photo-1618401471353-b98afee0b2eb?w=800&auto=format&fit=crop&q=60"
    "uiux.jpg" = "https://images.unsplash.com/photo-1561070791-2526d30994b5?w=800&auto=format&fit=crop&q=60"
    "quantum.jpg" = "https://images.unsplash.com/photo-1635070041078-e363dbe005cb?w=800&auto=format&fit=crop&q=60"
    "robotics.jpg" = "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?w=800&auto=format&fit=crop&q=60"
    "5g.jpg" = "https://images.unsplash.com/photo-1555949963-aa79dcee981c?w=800&auto=format&fit=crop&q=60"
    "edge.jpg" = "https://images.unsplash.com/photo-1558494949-ef010cbdcc31?w=800&auto=format&fit=crop&q=60"
    "digital-marketing.jpg" = "https://images.unsplash.com/photo-1557838923-2985c318be48?w=800&auto=format&fit=crop&q=60"
    "content.jpg" = "https://images.unsplash.com/photo-1574717024653-61fd2cf4d44d?w=800&auto=format&fit=crop&q=60"
}

# Download each image
foreach ($image in $images.GetEnumerator()) {
    $filename = $image.Key
    $url = $image.Value
    $outputPath = "images/blog/$filename"
    
    Write-Host "Downloading $filename..."
    Invoke-WebRequest -Uri $url -OutFile $outputPath
    Write-Host "Downloaded $filename to $outputPath"
}

Write-Host "All images have been downloaded successfully!" 