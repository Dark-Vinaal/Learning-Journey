const express = require("express");
const mongoose = require("mongoose");
const path = require("path");

const app = express();
app.use(express.json());

mongoose.connect("mongodb://localhost/mydb");

const Item = mongoose.model("Item", {
    name: String,
    value: String,
    category: String,
    type: String
});

app.post("/items", async (req, res) => {
    res.json(await Item.create(req.body));
});

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "index.html"));
});

app.listen(3000, () => console.log("Server running on 3000"));
