const Answer = require('./answer');
const Interpretation = require('./interpretation');
const Question = require('./question');
const Score = require('./score');
const Test = require('./test');

Answer.belongsToMany(Question, {
    as: 'questions',
    through: 'question_answer',
    foreignKey: 'answer_id',
    otherKey: 'question_id',
    timestamps: false,
});

Question.belongsToMany(Answer, {
    as: 'answers',
    through: 'question_answer',
    foreignKey: 'question_id',
    otherKey: 'answer_id',
    timestamps: false,
});

Answer.belongsToMany(Test, {
    as: 'tests',
    through: 'test_answer',
    foreignKey: 'answer_id',
    otherKey: 'test_id',
    timestamps: false,
});

Test.belongsToMany(Answer, {
    as: 'answers',
    through: 'test_answer',
    foreignKey: 'test_id',
    otherKey: 'answer_id',
    timestamps: false,
});

Test.belongsTo(Score, {
    as: 'score',
    foreignKey: 'score_id'
});

Score.hasMany(Test, {
    as: 'tests',
    foreignKey: 'score_id'
});

Score.belongsTo(Interpretation, {
    as: 'interpretation',
    foreignKey: 'interpretation_id'
});

Interpretation.hasMany(Score, {
    as: 'scores',
    foreignKey: 'interpretation_id'
});

module.exports = { Answer, Interpretation, Question, Score, Test };