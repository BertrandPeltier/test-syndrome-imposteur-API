const { Answer } = require('../models');

const answerController = {

    getAnswers: async (_, res) => {
        try {
            const answers = await Answer.findAll({
                include: ['tests', 'questions']
            });
            res.json(answers);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());           
        }
    },

    getAnswer: async (req, res) => {
        try {
            const answer = await Answer.findByPk(req.params.id, {
                include: ['tests', 'questions']
            });
            res.json(answer);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());           
        }
    },
};

module.exports = answerController;