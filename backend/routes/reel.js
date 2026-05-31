const express = require('express');
const router = express.Router();
const reelController = require('../controllers/reelController');
const authMiddleware = require('../middleware/authMiddleware');

router.post('/generate', authMiddleware, reelController.generateReel);
router.get('/memories', authMiddleware, reelController.getMemories);
router.get('/:id', authMiddleware, reelController.getReel);

module.exports = router;
