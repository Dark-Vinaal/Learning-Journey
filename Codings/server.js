const express = require("express");
const mongoose = require("mongoose");
const path = require("path");

const app = express();
app.use(express.json());

mongoose.connect("mongodb://localhost/restaurant");

const Food = mongoose.model("Food", {
    name: String,
    price: Number,
    category: String,
    type: String
});

app.post("/food", async (req, res) => {
    const food = await Food.create(req.body);
    res.json(food);
});

app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, "index.html"));
});

app.listen(3000, () => console.log("Server running on 3000"));