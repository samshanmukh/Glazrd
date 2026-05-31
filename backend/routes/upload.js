const express = require('express');
const router = express.Router();
const uploadController = require('../controllers/uploadController');
const multer = require('multer');
const authMiddleware = require('../middleware/authMiddleware');
const upload = multer({ dest: 'uploads/' });

router.post('/', authMiddleware, upload.array('photos'), uploadController.uploadPhotos);

module.exports = router;
