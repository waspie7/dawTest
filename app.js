const express = require("express");
const app = express();

app.get("/", (request, response) => {
	response.writeHead(200, {"Content-Type":"text/plain"});
	response.end("Hello world again ! change with no commit");
});

const PORT =  process.env.PORT || 8080;
app.listen(PORT);
