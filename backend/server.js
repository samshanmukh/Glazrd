const express = require('express');
const cors = require('cors');
require('dotenv').config();

const authRoutes = require('./routes/auth');
const uploadRoutes = require('./routes/upload');
const reelRoutes = require('./routes/reel');
const socialRoutes = require('./routes/social');
const postRoutes = require('./routes/post');
const groupRoutes = require('./routes/group');

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

app.use('/api/auth', authRoutes);
app.use('/api/upload', uploadRoutes);
app.use('/api/reel', reelRoutes);
app.use('/api/social', socialRoutes);
app.use('/api/post', postRoutes);
app.use('/api/group', groupRoutes);

app.get('/', (req, res) => {
  res.send('Glazrd API with differentiator structure is running...');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
