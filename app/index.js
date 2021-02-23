require('dotenv').config();

const express = require('express');
const multer = require('multer');
const sanitizeBody = require('./middlewares/sanitizeBody');

const router = require('./router');
const bodyParser = multer();
const app = express();


// Parser le content des requetes POST
app.use(express.urlencoded({ extended: true }));

// Pour pouvoir envoyer du JSON depuis Insomnia/Postman:
app.use(express.json());

// on utlise .none() pour dire qu'on attends pas de fichier, uniquement des inputs "classiques" !
app.use(bodyParser.none());

// Sanitize req.body
app.use(sanitizeBody);

app.use(router);

const port = process.env.PORT;

app.listen(port, () => {
    console.log(`Listening on ${process.env.BASE_URL}${port}`);
});