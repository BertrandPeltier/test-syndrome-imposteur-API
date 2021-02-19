const express = require('express');

const router = express.Router();

router.get('/', (req, res) => {
    res.send('API test du syndrome de l\'imposteur');
});

module.exports = router;