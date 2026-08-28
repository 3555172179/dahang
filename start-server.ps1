$root = 'd:\website\zgs-glass'
$port = 5173
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
[System.IO.File]::WriteAllText((Join-Path $root '.server.log'), "listening on $port`n")
while ($listener.IsListening) {
    $ctx = $listener.GetContext()
    try {
        $path = $ctx.Request.Url.LocalPath
        if ($path -eq '/' -or $path -eq '') { $path = '/homepage.html' }
        $full = [System.IO.Path]::GetFullPath((Join-Path $root ($path.TrimStart('/'))))
        if (-not $full.StartsWith($root)) { throw 'forbidden' }
        if (Test-Path -LiteralPath $full -PathType Leaf) {
            $bytes = [System.IO.File]::ReadAllBytes($full)
            $ext = [System.IO.Path]::GetExtension($full).ToLower()
            $mime = switch ($ext) {
                '.html' { 'text/html; charset=utf-8' }
                '.css'  { 'text/css; charset=utf-8' }
                '.js'   { 'application/javascript' }
                '.png'  { 'image/png' }
                '.jpg'  { 'image/jpeg' }
                '.jpeg' { 'image/jpeg' }
                '.webp' { 'image/webp' }
                '.svg'  { 'image/svg+xml' }
                '.ico'  { 'image/x-icon' }
                '.woff' { 'font/woff' }
                '.woff2'{ 'font/woff2' }
                default { 'application/octet-stream' }
            }
            $ctx.Response.StatusCode = 200
            $ctx.Response.ContentType = $mime
            $ctx.Response.ContentLength64 = $bytes.Length
            $ctx.Response.OutputStream.Write($bytes, 0, $bytes.Length)
        }
        else {
            $ctx.Response.StatusCode = 404
            $ctx.Response.StatusDescription = 'Not Found'
        }
    }
    catch {
        $ctx.Response.StatusCode = 500
    }
    finally {
        try { $ctx.Response.Close() } catch { }
    }
}
