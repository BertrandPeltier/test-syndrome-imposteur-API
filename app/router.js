const express = require('express');

const questionController = require('./controllers/questionController');
const answerController = require('./controllers/answerController');
const scoreController = require('./controllers/scoreController');
const interpretationController = require('./controllers/interpretationController');
const testController = require('./controllers/testController');

const router = express.Router();


router.get('/', (req, res) => {
    res.send('API test du syndrome de l\'imposteur');
});

router.get('/questions', questionController.getQuestions);
router.get('/questions/:id', questionController.getQuestion);

router.get('/answers', answerController.getAnswers);
router.get('/answers/:id', answerController.getAnswer);

router.get('/scores', scoreController.getScores);
router.get('/scores/:id', scoreController.getScore);

router.get('/interpretations', interpretationController.getInterpretations);
router.get('/interpretations/:id', interpretationController.getInterpretation);

router.get('/tests', testController.getTests);
router.post('/tests', testController.recordTest);
router.get('/tests/:id', testController.getTest);

module.exports = router;