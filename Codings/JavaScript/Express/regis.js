const express = require("express");
const bodyParser = require("body-parser");
const app = express();
const port = 3600;

app.use(bodyParser.urlencoded({ extended: true }));

let users = [] 

app.get("/", (req, res) => {
    res.send(`
        <h1> Registration Form </h1>
        <form method="POST" action="/register">
            <input type="text" name="name" placeholder="Your Name" required />
            <input type="email" name="email" placeholder="Your Email" required />
            <input type="password" name="password" placeholder="Your Password" required />
            <input type="text" name="classname" placeholder="Your Class" required />
            <input type="text" name="rollno" placeholder="Your Roll Number" required />
            <button type="submit">Register</button>
        </form>
    `);
});

app.post("/register", (req, res) => {
    const { name, email, password, classname, rollno } = req.body;
    if (users.some((user) => user.email === email))
    return res.status(400).send("User Exist");
    users.push({ name, email, password, classname, rollno });
    res.send(`Registered Users : ${JSON.stringify(users)}`);
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
