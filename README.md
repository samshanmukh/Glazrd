# Glazrd

AI-powered social media app that lets users upload trip photos, automatically generates a cinematic reel from them using AI, and posts it directly to their connected Instagram, Facebook, and TikTok accounts.

## Project Structure

- `frontend/`: Flutter application (Web & Mobile support)
- `backend/`: Node.js/Express API

## Setup Instructions

### Backend

1. Navigate to the `backend` directory:
   ```bash
   cd backend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Copy `.env.example` to `.env` and fill in the required API keys:
   ```bash
   cp .env.example .env
   ```
4. Start the server:
   ```bash
   npm run dev
   ```

### Frontend (Flutter)

1. Navigate to the `frontend` directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the app:
   - For Web: `flutter run -d chrome`
   - For Mobile: Ensure an emulator/device is connected and run `flutter run`

## Environment Variables (.env)

The following environment variables are required in the `backend/.env` file:

- `PORT`: Port number for the backend server.
- `MONGODB_URI`: Connection string for MongoDB.
- `JWT_SECRET`: Secret key for JWT authentication.
- `INSTAGRAM_CLIENT_ID`, `INSTAGRAM_CLIENT_SECRET`: Instagram API credentials.
- `FACEBOOK_CLIENT_ID`, `FACEBOOK_CLIENT_SECRET`: Facebook API credentials.
- `TIKTOK_CLIENT_ID`, `TIKTOK_CLIENT_SECRET`: TikTok API credentials.
- `AWS_S3_BUCKET`, `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`: AWS S3 configuration for photo storage.
- `CLOUDINARY_URL`: Cloudinary configuration (alternative to S3).
- `OPENAI_API_KEY`: OpenAI API key for AI generation.
- `REPLICATE_API_TOKEN`: Replicate API token for AI generation.

## Features

- **Home**: Photo upload drag-and-drop zone (placeholder).
- **Auth**: Login and Sign Up pages.
- **Dashboard**: Overview of connected social accounts and past reels.
- **Preview**: Reel preview before posting.
- **Settings**: Manage connected social media platforms.
