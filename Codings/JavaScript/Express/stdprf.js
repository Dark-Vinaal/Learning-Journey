const express = require("express");
const app = express();
const port = 4500;

app.use(express.urlencoded({ extended: true }));

app.get("/", (req, res) => {
    res.send(`
        <html>
            <head>
                <title>Student Profile</title>
            </head>
            <body style="font-family: Arial, sans-serif; text-align: center; margin-top: 50px; padding: 50px;">
                <form method="POST" action="/greet">
                    <input type="text" name="name" placeholder="Your Name" required /> <br><br>
                    <input type="text" name="age" placeholder="Your Age" required /> <br><br>
                    <input type="email" name="email" placeholder="Your Email" required /> <br><br>
                    <input type="number" name="phone" placeholder="Your Phone Number" required /> <br><br>
                    <select name="gender" required>
                        <option value="">Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select> <br><br>
                    <button type="submit">Submit</button>
                </form>
            </body>
        </html>
    `);
});

app.post("/greet", (req, res) => {
    const { name, age, email, phone, gender } = req.body;
    res.send(`
        <html>
            <head>
                <title>Greeting</title>
            </head>
            <body style="font-family: Arial, sans-serif; text-align: center; margin-top: 50px; padding: 50px;">
                <h1>Hello, ${name}!</h1>
                <p>Age: ${age}</p>
                <p>Email: ${email}</p>
                <p>Phone: ${phone}</p>
                <p>Gender: ${gender}</p>
                <a href="/">Go Back</a>
            </body>
        </html>
    `);
});

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});
