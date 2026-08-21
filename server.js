const http = require('http');
const fs = require('fs');
const path = require('path');

const MIME = {
  html: 'text/html; charset=utf-8',
  css: 'text/css',
  js: 'text/javascript',
  png: 'image/png',
  jpg: 'image/jpeg',
  jpeg: 'image/jpeg',
  webp: 'image/webp',
  svg: 'image/svg+xml',
  ico: 'image/x-icon',
  json: 'application/json',
  mp4: 'video/mp4',
  webm: 'video/webm',
};

http.createServer((req, res) => {
  const urlPath = decodeURIComponent(new URL(req.url, 'http://x').pathname);
  let file = path.join(__dirname, urlPath === '/' ? 'index.html' : urlPath);
  if (!file.startsWith(__dirname)) { res.writeHead(403); return res.end(); }
  try {
    const data = fs.readFileSync(file);
    res.setHeader('Content-Type', MIME[path.extname(file).slice(1)] || 'application/octet-stream');
    res.end(data);
  } catch (e) {
    res.writeHead(404);
    res.end('404 Not Found');
  }
}).listen(8080, () => console.log('Serving on http://localhost:8080'));
