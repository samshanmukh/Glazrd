import React from 'react';

const ReelPreview = () => {
  return (
    <div className="reel-preview-page">
      <h2>Reel Preview</h2>
      <div className="video-container" style={{ width: '360px', height: '640px', backgroundColor: '#000', margin: '20px 0' }}>
        {/* Video placeholder */}
      </div>
      <button>Post to Selected Platforms</button>
    </div>
  );
};

export default ReelPreview;
