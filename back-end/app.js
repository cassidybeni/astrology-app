// DEPENDENCIES
const cors = require("cors");
const express = require("express");

// CONFIGURATION
const app = express();

// MIDDLEWARE
app.use(cors());
app.use(express.json()); // Parse incoming JSON

// ROUTES
app.get("/", (req, res) => {
  res.send("Welcome to the Astrology App!");
});

app.listen(3003, () => {
  console.log("Listening for requests on port 3003");
});

const db = require("./db/dbConfig.js");

// EXPORT
module.exports = app;
