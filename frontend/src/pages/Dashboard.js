import React from 'react';

const Dashboard = () => {
  return (
    <div className="dashboard-page">
      <h2>Your Dashboard</h2>
      <div className="connected-accounts">
        <h3>Connected Accounts</h3>
        <ul>
          <li>Instagram: Connected</li>
          <li>TikTok: Connected</li>
          <li>Facebook: Not Connected</li>
        </ul>
      </div>
      <div className="past-reels">
        <h3>Your Past Reels</h3>
        <p>No reels generated yet.</p>
      </div>
    </div>
  );
};

export default Dashboard;
