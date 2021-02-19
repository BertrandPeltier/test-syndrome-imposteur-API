const { Question, Answer } = require('../models');

const mainController = {

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

    getAnswers: async (_, res) => {
        try {
            const answers = await Answer.findAll();
            res.json(answers);
        } catch {
            console.trace(err);
            res.status(500).json(err.toString());           
        }
    }

};

module.exports = mainController;