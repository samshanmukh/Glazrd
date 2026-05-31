const express = require('express');
const router = express.Router();
const groupController = require('../controllers/groupController');
const authMiddleware = require('../middleware/authMiddleware');

router.post('/create', authMiddleware, groupController.createGroup);
router.post('/join', authMiddleware, groupController.joinGroup);
router.post('/:id/upload', authMiddleware, groupController.uploadToGroup);
router.get('/:id', authMiddleware, groupController.getGroupDetails);

module.exports = router;
