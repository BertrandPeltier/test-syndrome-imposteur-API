const { Answer } = require('../models');

const answerController = {

    getAnswers: async (_, res) => {
        try {
            const answers = await Answer.findAll({
                include: 'tests'
            });
            res.json(answers);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());           
        }
    },
};

module.exports = answerController;