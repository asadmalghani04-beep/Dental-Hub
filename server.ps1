param(
    [int]$Port = 8080,
    [string]$Root = $PSScriptRoot
)

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = (Get-Location).Path
}

$mimeTypes = @{
    ".html" = "text/html; charset=utf-8"
    ".htm"  = "text/html; charset=utf-8"
    ".css"  = "text/css; charset=utf-8"
    ".js"   = "application/javascript; charset=utf-8"
    ".json" = "application/json; charset=utf-8"
    ".png"  = "image/png"
    ".jpg"  = "image/jpeg"
    ".jpeg" = "image/jpeg"
    ".gif"  = "image/gif"
    ".svg"  = "image/svg+xml"
    ".ico"  = "image/x-icon"
    ".txt"  = "text/plain; charset=utf-8"
}

$listener = New-Object System.Net.Sockets.TcpListener([System.Net.IPAddress]::Loopback, $Port)
$listener.Start()
Write-Host "HTTP server listening at: http://localhost:$Port/"
Write-Host "Serving files from: $Root"

try {
    while ($true) {
        $client = $listener.AcceptTcpClient()
        try {
            $stream = $client.GetStream()
            $stream.ReadTimeout = 3000
            $reader = New-Object System.IO.StreamReader($stream, [System.Text.Encoding]::UTF8)
            $requestLine = $reader.ReadLine()

            if (-not [string]::IsNullOrWhiteSpace($requestLine)) {
                $parts = $requestLine.Split(' ')
                if ($parts.Length -ge 2) {
                    $rawUrl = $parts[1]
                    $urlPath = ($rawUrl -split '\?')[0]
                    if ($urlPath -eq "/" -or [string]::IsNullOrWhiteSpace($urlPath)) {
                        $urlPath = "/index.html"
                    }

                    $cleanPath = [System.Uri]::UnescapeDataString($urlPath).TrimStart('/').Replace('/', [System.IO.Path]::DirectorySeparatorChar)
                    $fullPath = [System.IO.Path]::GetFullPath((Join-Path $Root $cleanPath))

                    if ($fullPath.StartsWith([System.IO.Path]::GetFullPath($Root), [System.StringComparison]::OrdinalIgnoreCase) -and (Test-Path $fullPath -PathType Leaf)) {
                        $ext = [System.IO.Path]::GetExtension($fullPath).ToLower()
                        $contentType = if ($mimeTypes.ContainsKey($ext)) { $mimeTypes[$ext] } else { "application/octet-stream" }
                        $fileBytes = [System.IO.File]::ReadAllBytes($fullPath)

                        $header = "HTTP/1.1 200 OK`r`nContent-Type: $contentType`r`nCache-Control: no-cache, no-store, must-revalidate`r`nPragma: no-cache`r`nExpires: 0`r`nContent-Length: $($fileBytes.Length)`r`nConnection: close`r`n`r`n"
                        $headerBytes = [System.Text.Encoding]::UTF8.GetBytes($header)

                        $stream.Write($headerBytes, 0, $headerBytes.Length)
                        $stream.Write($fileBytes, 0, $fileBytes.Length)
                    } else {
                        $body = "<html><body><h1>404 Not Found</h1></body></html>"
                        $bodyBytes = [System.Text.Encoding]::UTF8.GetBytes($body)
                        $header = "HTTP/1.1 404 Not Found`r`nContent-Type: text/html; charset=utf-8`r`nContent-Length: $($bodyBytes.Length)`r`nConnection: close`r`n`r`n"
                        $headerBytes = [System.Text.Encoding]::UTF8.GetBytes($header)

                        $stream.Write($headerBytes, 0, $headerBytes.Length)
                        $stream.Write($bodyBytes, 0, $bodyBytes.Length)
                    }
                    $stream.Flush()
                }
            }
        } catch {
            # ignore single request errors
        } finally {
            $client.Close()
        }
    }
} finally {
    $listener.Stop()
}
