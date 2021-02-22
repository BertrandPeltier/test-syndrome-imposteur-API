const { Test, Answer } = require('../models');

const testController = {

    getTests: async (_, res) => {
        try {
            const tests = await Test.findAll({
                include: ['answers', {
                    association : 'score',
                    include: 'interpretation'}
                ]
            });
            res.json(tests);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },

    getTest: async (req, res) => {
        try {
            const test = await Test.findByPk(req.params.id, {
                include: ['answers', {
                    association : 'score',
                    include: 'interpretation'}
                ]
            });
            res.json(test);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },

    recordTest: async (req, res) => {
        try {

            const newTest = await Test.create();

            let scoreTest = 0;

            for (selectedAnswer in req.body) {

                answerId = Number(req.body[selectedAnswer]);

                const answer = await Answer.findByPk(answerId, {
                    include: ['tests', 'questions']
                });

                await newTest.addAnswer(answer);

                scoreTest += answer.answer_value;

            }

            newTest.score_id = scoreTest - 19;

            await newTest.save();

            const recordedTest = await Test.findByPk(newTest.id, {
                include: ['answers', {
                    association : 'score',
                    include: 'interpretation'}
                ]
            });

            res.json(recordedTest);

        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    }
};

module.exports = testController;