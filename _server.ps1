$root = 'D:\website\zgs-glass'
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add('http://localhost:8080/')
$listener.Start()
while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  try {
    $path = $ctx.Request.Url.AbsolutePath.TrimStart('/')
    if ($path -eq '' -or $path -eq 'index.html') { $path = 'index.html' }
    $full = Join-Path $root ($path -replace '/', '\')
    if (Test-Path $full) {
      $bytes = [System.IO.File]::ReadAllBytes($full)
      $ext = [System.IO.Path]::GetExtension($full)
      switch ($ext) {
        '.html' { $ctx.Response.ContentType = 'text/html; charset=utf-8' }
        '.css'  { $ctx.Response.ContentType = 'text/css' }
        '.js'   { $ctx.Response.ContentType = 'application/javascript' }
        '.svg'  { $ctx.Response.ContentType = 'image/svg+xml' }
        '.png'  { $ctx.Response.ContentType = 'image/png' }
        '.jpg'  { $ctx.Response.ContentType = 'image/jpeg' }
        default { $ctx.Response.ContentType = 'application/octet-stream' }
      }
      $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
      $ctx.Response.StatusCode = 404
    }
  } catch { $ctx.Response.StatusCode = 500 }
  $ctx.Response.Close()
}
