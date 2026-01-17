const express = require("express");
require("dotenv").config();
const https = require("https");
const http = require("http");
const fs = require("fs");

const connectDB = require("./config/db");
const albumRoutes = require("./routes/albums_routes");
const errorHandler = require("./middleware/error_handler");

const app = express();
const HTTPS_PORT = process.env.HTTPS_PORT;
const HTTP_PORT = process.env.HTTP_PORT;

app.use(express.json());

connectDB();

app.get("/test", (req, res) => {
  res.status(200).json({ message: "Secure server is running!" });
});

app.use("/api/albums", albumRoutes);
app.use(errorHandler);

const credentials = {
  key: fs.readFileSync("certificates/localhost-key.pem", "utf8"),
  cert: fs.readFileSync("certificates/localhost.pem", "utf8"),
};

const httpsServer = https.createServer(credentials, app);
httpsServer.listen(HTTPS_PORT, () => {
  console.log(`HTTPS server running on https://localhost:${HTTPS_PORT}`);
});

const httpApp = express();
httpApp.use((req, res) => {
  res.redirect(301, `https://${req.hostname}:${HTTPS_PORT}${req.url}`);
});

const httpServer = http.createServer(httpApp);
httpServer.listen(HTTP_PORT, () => {
  console.log(`HTTP server running on port ${HTTP_PORT} (redirects to HTTPS)`);
});
