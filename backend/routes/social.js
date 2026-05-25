const express = require('express');
const router = express.Router();
const socialController = require('../controllers/socialController');

router.get('/connect/:platform', socialController.connectPlatform);
router.delete('/disconnect/:platform', socialController.disconnectPlatform);
router.get('/accounts', socialController.getConnectedAccounts);

module.exports = router;
