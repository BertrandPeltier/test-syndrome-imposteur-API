const express = require('express');

const questionController = require('./controllers/questionController');
const answerController = require('./controllers/answerController');
const scoreController = require('./controllers/scoreController');
const interpretationController = require('./controllers/interpretationController');
const testController = require('./controllers/testController');

const router = express.Router();

const base_url = process.env.BASE_URL;

router.get(`${base_url}`, (req, res) => {
    res.send('API test du syndrome de l\'imposteur');
});

router.get(`${base_url}/questions`, questionController.getQuestions);
router.get(`${base_url}/questions/:id`, questionController.getQuestion);

router.get(`${base_url}/answers`, answerController.getAnswers);
router.get(`${base_url}/answers/:id`, answerController.getAnswer);

router.get(`${base_url}/scores`, scoreController.getScores);
router.get(`${base_url}/scores/:id`, scoreController.getScore);

router.get(`${base_url}/interpretations`, interpretationController.getInterpretations);
router.get(`${base_url}/interpretations/:id`, interpretationController.getInterpretation);

router.get(`${base_url}/tests`, testController.getTests);
router.post(`${base_url}/tests`, testController.recordTest);
router.get(`${base_url}/tests/:id`, testController.getTest);

module.exports = router;