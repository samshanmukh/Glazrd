const mongoose = require('mongoose');

const ReelSchema = new mongoose.Schema({
  userId: { type: mongoose.Schema.Types.ObjectId, ref: 'User', required: true },
  groupId: { type: mongoose.Schema.Types.ObjectId, ref: 'GroupTrip' },
  videoUrl: { type: String },
  status: { type: String, enum: ['pending', 'processing', 'completed', 'failed'], default: 'pending' },
  photos: [String],
  vibe: { type: String }, // e.g., "Beach", "Moody", "Chaotic"
  locationData: [{
    lat: Number,
    lng: Number,
    name: String,
    day: Number
  }],
  trendMetadata: {
    audioId: String,
    trendName: String
  },
  isMemory: { type: Boolean, default: false },
  originalDate: { type: Date }
}, { timestamps: true });

module.exports = mongoose.model('Reel', ReelSchema);
