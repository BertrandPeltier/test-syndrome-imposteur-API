const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Result extends Model {};

Result.init({
    score: DataTypes.INTEGER,
}, {
    sequelize,
    tableName: 'result',
    timestamps: true
});

module.exports = Result;