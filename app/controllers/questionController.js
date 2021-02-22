const { Question } = require('../models');

const questionController = {

    getQuestions: async (_, res) => {
        try {
            const questions = await Question.findAll({
                include: 'answers'
            });
            res.json(questions);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },

    getQuestion: async (req, res) => {
        try {
            const question = await Question.findByPk(req.params.id, {
                include: 'answers'
            });
            res.json(question);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },
};

module.exports = questionController;