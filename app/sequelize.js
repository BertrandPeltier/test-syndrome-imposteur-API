const { Sequelize } = require('sequelize');

const sequelize = new Sequelize(process.env.DB_DATABASE, process.env.DB_USER, process.env.DB_PASSWORD, {
    host: process.env.DB_HOST,
    dialect: 'mysql',
    define: {
        timestamps: true,
        createdAt: 'created_at',
        updatedAt: 'updated_at',
    },
    logging: false
});

module.exports = sequelize;