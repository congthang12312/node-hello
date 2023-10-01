const http = require('http');
const port = process.env.PORT || 3000;
const version = process.env.APP_VERSION || 1
const env = process.env.APP_ENV || "test"
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  const msg = `Hello Node1!\n ${version} - ${env} `
  res.end(msg);
});

server.listen(port, () => {
  console.log(`Server running on http://localhost:${port}/`);
});
