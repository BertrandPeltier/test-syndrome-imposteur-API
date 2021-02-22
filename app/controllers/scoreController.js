const { Score } = require('../models');

const scoreController = {

    getScores: async (_, res) => {
        try {
            const scores = await Score.findAll({
                include: ['tests', 'interpretation']
            });
            res.json(scores);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },

    getScore: async (req, res) => {
        try {
            const score = await Score.findByPk(req.params.id, {
                include: ['tests', 'interpretation']
            });
            res.json(score);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },
};

module.exports = scoreController;