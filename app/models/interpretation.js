const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Interpretation extends Model {};

Interpretation.init({
    Interpretation_text: DataTypes.TEXT,
}, {
    sequelize,
    tableName: 'interpretation',
});

module.exports = Interpretation;