const express = require('express');
const router = express.Router();
const recommendationController = require('../controllers/recommendationController');
const authMiddleware = require('../middleware/authMiddleware');

router.post('/', authMiddleware, recommendationController.getRecommendation);

module.exports = router;
