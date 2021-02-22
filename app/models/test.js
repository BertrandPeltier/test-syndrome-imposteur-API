const { DataTypes, Model } = require('sequelize');
const sequelize = require('../sequelize');

class Test extends Model {};

Test.init({
}, {
    sequelize,
    tableName: 'test',
    timestamps: true
});

module.exports = Test;