const mongoose = require('mongoose');

const GroupTripSchema = new mongoose.Schema({
  name: { type: String, required: true },
  members: [{ type: mongoose.Schema.Types.ObjectId, ref: 'User' }],
  photos: [{
    url: String,
    uploadedBy: { type: mongoose.Schema.Types.ObjectId, ref: 'User' },
    metadata: Object
  }],
  inviteCode: { type: String, unique: true },
  isCompleted: { type: Boolean, default: false }
}, { timestamps: true });

module.exports = mongoose.model('GroupTrip', GroupTripSchema);
