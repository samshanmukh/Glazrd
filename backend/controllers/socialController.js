exports.connectPlatform = async (req, res) => {
  res.status(200).json({ message: `Connected to ${req.params.platform} (placeholder)` });
};

exports.disconnectPlatform = async (req, res) => {
  res.status(200).json({ message: `Disconnected from ${req.params.platform} (placeholder)` });
};

exports.getConnectedAccounts = async (req, res) => {
  res.status(200).json({ accounts: ['instagram', 'tiktok'] });
};
