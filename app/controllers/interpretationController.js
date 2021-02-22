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
};

module.exports = interpretationController;