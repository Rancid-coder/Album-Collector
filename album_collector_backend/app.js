const express = require("express");
require("dotenv").config();


const connectDB = require("./config/db");
const albumRoutes = require("./routes/albums_routes");
const errorHandler = require("./middleware/error_handler");

const app = express();
const PORT = process.env.PORT;

app.use(express.json());

connectDB();

app.get("/test", (req, res) => {
  res.status(200).send("Server is running!");
});

app.use("/api/albums", albumRoutes);

app.use(errorHandler);

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
