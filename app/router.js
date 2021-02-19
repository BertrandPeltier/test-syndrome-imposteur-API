const express = require('express');

const mainController = require('./controllers/mainController');

const router = express.Router();


router.get('/', (req, res) => {
    res.send('API test du syndrome de l\'imposteur');
});

router.get('/questions', mainController.getQuestions);

router.get('/answers', mainController.getAnswers);

module.exports = router;