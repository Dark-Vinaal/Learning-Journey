const express = require("express");
const app = express();
const port = 28000;

app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
    res.send(`
        <html lang="en">
        <head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Registration</title>
        </head>
        <body>
            <h1>Registration Form</h1>
            <form method="POST" action="/register">
                <input type="text" name="name" placeholder="Your Name" required/><br><br>
                <input type="email" name="email" placeholder="Your Email" required/><br><br>
                <input type="password" name="password" placeholder="Your Password" required /><br><br>
                <button type="submit">Register</button>
            </form>
        </body>
        </html>
`);
});

app.post("/register", (req, res) => {
    const { name, email, password } = req.body;
    res.send(`
        <h1>Registration Successful!</h1>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Password:</strong> ${password}</p>
        <a href="/">Go Back</a>
    `);
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});
