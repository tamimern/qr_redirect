# קובץ: update_pages.ps1

$links = Get-Content ".\links.txt"

function PageTemplate($url) {

@"
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="refresh" content="0; url=$url">
<title>Redirecting…</title>
</head>
<body>
<p>Redirecting to <a href="$url">$url</a></p>
</body>
</html>

"@

}

for ($i=0; $i -lt $links.Count; $i++) {

  $day = "{0:00}" -f ($i+1)

  $file = "day$day.html"

  $html = PageTemplate($links[$i].Trim())

  Set-Content -Path $file -Value $html -Encoding UTF8

  Write-Host "Updated $file"

}
 