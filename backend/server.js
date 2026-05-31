const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');
require('dotenv').config();

const authRoutes = require('./routes/auth');
const uploadRoutes = require('./routes/upload');
const reelRoutes = require('./routes/reel');
const socialRoutes = require('./routes/social');
const postRoutes = require('./routes/post');
const groupRoutes = require('./routes/group');
const recommendationRoutes = require('./routes/recommendation');

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// Database Connection
mongoose.connect(process.env.MONGODB_URI || 'mongodb://localhost:27017/glazrd')
  .then(() => console.log('MongoDB connected'))
  .catch(err => console.error('MongoDB connection error:', err));

app.use('/api/auth', authRoutes);
app.use('/api/upload', uploadRoutes);
app.use('/api/reel', reelRoutes);
app.use('/api/social', socialRoutes);
app.use('/api/post', postRoutes);
app.use('/api/group', groupRoutes);
app.use('/api/recommendation', recommendationRoutes);

app.get('/', (req, res) => {
  res.send('Glazrd API with Recommendation System is running...');
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
