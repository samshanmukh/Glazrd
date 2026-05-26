const mongoose = require('mongoose');

const UserSchema = new mongoose.Schema({
  email: { type: String, required: true, unique: true },
  password: { type: String, required: true },
  name: { type: String },
  connectedAccounts: [{ platform: String, accessToken: String, refreshToken: String }],
  travelStats: {
    countriesVisited: [String],
    totalMiles: { type: Number, default: 0 },
    tripCount: { type: Number, default: 0 }
  },
  travelJournal: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Reel' }]
}, { timestamps: true });

module.exports = mongoose.model('User', UserSchema);
