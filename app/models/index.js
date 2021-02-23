const Answer = require('./answer');
const Interpretation = require('./interpretation');
const Question = require('./question');
const Score = require('./score');
const Test = require('./test');

Answer.belongsTo(Question, {
    as: 'question',
    foreignKey: 'question_id'
});

Question.hasMany(Answer, {
    as: 'answers',
    foreignKey: 'question_id'
});

Answer.belongsToMany(Test, {
    as: 'tests',
    through: 'test_answer',
    foreignKey: 'answer_id',
    otherKey: 'test_id',
});

Test.belongsToMany(Answer, {
    as: 'answers',
    through: 'test_answer',
    foreignKey: 'test_id',
    otherKey: 'answer_id',
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