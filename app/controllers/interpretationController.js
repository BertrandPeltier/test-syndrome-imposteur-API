const { Interpretation } = require('../models');

const interpretationController = {

    getInterpretations: async (_, res) => {
        try {
            const interpretations = await Interpretation.findAll({
                include: 'scores'
            });
            res.json(interpretations);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },

    getInterpretation: async (req, res) => {
        try {
            const interpretation = await Interpretation.findByPk(req.params.id, {
                include: 'scores'
            });
            res.json(interpretation);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },
};

module.exports = interpretationController;