const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Score extends Model {};

Score.init({
    score_value: DataTypes.INTEGER,
}, {
    sequelize,
    tableName: 'score',
});

module.exports = Score;