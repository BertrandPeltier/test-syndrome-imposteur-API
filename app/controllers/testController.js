const { Test } = require('../models');

const testController = {

    getTests: async (_, res) => {
        try {
            const tests = await Test.findAll({
                include: ['answers', 'score']
            });
            res.json(tests);
        } catch (err) {
            console.trace(err);
            res.status(500).json(err.toString());
        }
    },
};

module.exports = testController;