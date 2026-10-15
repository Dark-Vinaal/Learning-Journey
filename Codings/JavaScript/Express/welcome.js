const express = require ("express");
const app = express(); 

app.get("/", (req, res) => {
    res.send("Welcome Student");
});

const port = 2800;
app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);  
});