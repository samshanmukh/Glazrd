import React from 'react';

const Home = () => {
  return (
    <div className="home-page">
      <h1>Welcome to Glazrd</h1>
      <p>Transform your trip photos into cinematic reels.</p>
      <div className="upload-zone" style={{ border: '2px dashed #ccc', padding: '40px', textAlign: 'center', marginTop: '20px' }}>
        <p>Drag & drop your photos here, or click to browse</p>
        <input type="file" multiple accept="image/*" />
      </div>
    </div>
  );
};

export default Home;
