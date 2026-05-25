const express = require('express');
const router = express.Router();
const reelController = require('../controllers/reelController');

router.post('/generate', reelController.generateReel);
router.get('/:id', reelController.getReel);

module.exports = router;
