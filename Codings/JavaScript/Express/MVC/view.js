const express = require('express');
const app = express();

const controller = require('./controller');

app.get('/', controller.show);

const port = 3200;

app.listen(port, () => {
    console.log(`Server is running at http://localhost:${port}`);
});