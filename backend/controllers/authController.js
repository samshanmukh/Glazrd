exports.register = async (req, res) => {
  res.status(201).json({ message: 'User registered successfully (placeholder)' });
};

exports.login = async (req, res) => {
  res.status(200).json({ token: 'placeholder-jwt-token', message: 'User logged in successfully' });
};
