const express = require("express")
const cors = require("cors")

const app = express();
app.use(express.json());
app.use(cors());

const server = app.listen(4000, () => {
    console.log('node server started');
});

app.get('/', (req, res) => {
    res.send('Hello word this is a node server :D');
});
