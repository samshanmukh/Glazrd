const express = require('express');
const router = express.Router();
const socialController = require('../controllers/socialController');
const authMiddleware = require('../middleware/authMiddleware');

router.get('/connect/:platform', authMiddleware, socialController.connectPlatform);
router.delete('/disconnect/:platform', authMiddleware, socialController.disconnectPlatform);
router.get('/accounts', authMiddleware, socialController.getConnectedAccounts);

module.exports = router;
