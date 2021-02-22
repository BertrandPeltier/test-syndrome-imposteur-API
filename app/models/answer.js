const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Answer extends Model {};

Answer.init({
    answer_text: DataTypes.TEXT,
    answer_value: DataTypes.INTEGER,
}, {
    sequelize,
    tableName: 'answer',
});

module.exports = Answer;