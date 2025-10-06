const express = require('express');
const app = express();
const PORT = 8080;

app.get('/', (req, res) => {
    res.send('Hello from my Automated CI/CD Pipeline! Version 2.0');
    res.send('hello I am Ayan Jyoti');
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
