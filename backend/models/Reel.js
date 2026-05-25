const mongoose = require('mongoose');

const ReelSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  videoUrl: { type: String },
  status: { type: String, enum: ['pending', 'processing', 'completed', 'failed'], default: 'pending' },
  photos: [String]
}, { timestamps: true });

module.exports = mongoose.model('Reel', ReelSchema);
