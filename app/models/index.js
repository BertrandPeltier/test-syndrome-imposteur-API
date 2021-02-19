const Answer = require('./answer');
const Question = require('./question');

Answer.belongsToMany(Question, {
    as: 'questions',
    through: 'question_has_answer',
    foreignKey: 'answer_id',
    otherKey: 'question_id',
    timestamps: false,
});

Question.belongsToMany(Answer, {
    as: 'answers',
    through: 'question_has_answer',
    foreignKey: 'question_id',
    otherKey: 'answer_id',
    timestamps: false,
});

module.exports = { Answer, Question };