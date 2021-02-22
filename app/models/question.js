const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Question extends Model {};

Question.init({
    question_text: DataTypes.TEXT,
}, {
    sequelize,
    tableName: 'question',
});

module.exports = Question;