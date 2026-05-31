# Glazrd

AI-powered travel social media app that transforms your trip photos into cinematic reels with zero effort. Unlike generic AI video tools, Glazrd is built exclusively for travelers.

## 🚀 Unique Differentiators

1. **🧠 Vibe Detection**: No style picking required. Glazrd analyzes your photos automatically to detect the vibe (Beach, Moody Mountains, Chaotic City) and syncs music and transitions to match.
2. **👥 Group Trip Mode**: Collaborative albums for your group trips. Everyone contributes photos, and the AI merges them into one narrative reel from multiple perspectives.
3. **📍 Location-Aware Storytelling**: GPS-based narrative structure. The app automatically organizes your reel as a chronological journey: "Day 1 Shibuya → Day 2 Kyoto".
4. **⚡ One-Tap Flow**: Minimalist UX. The product is simplicity: Open App → Drop Photos → Post.
5. **🎵 Trend Syncing**: Real-time integration with trending audio from Instagram Reels and TikTok.
6. **🌍 Travel-First Identity**: Features include automatic packing lists, destination tagging, and travel stats (countries visited, miles traveled).
7. **🔁 Memories Mode**: Automated throwback reels for trip anniversaries.
8. **📈 Smart Recommendations**: AI-driven posting strategy. Recommends the best platform (Instagram vs TikTok), optimal posting time, and trending hashtags based on live social media data.

## 📸 Screenshots (Placeholders)

| Home (One-Tap) | Dashboard (Travel Journal) |
| --- | --- |
| ![Home Screen](https://via.placeholder.com/300x600?text=Home+Screen) | ![Dashboard Screen](https://via.placeholder.com/300x600?text=Dashboard+Screen) |

## Project Structure

- `frontend/`: Flutter application (Web & Mobile support, Dark Mode)
- `backend/`: Node.js/Express API (MongoDB + Mongoose)

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
3. Copy `.env.example` to `.env` and fill in the required API keys.
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
   - For Mobile: `flutter run`

## Tech Stack

- **Frontend**: Flutter (Instagram-inspired Dark UI)
- **Backend**: Node.js, Express, Mongoose
- **AI**: OpenAI/Replicate (Vibe & Narrative detection)
- **Storage**: AWS S3 / Cloudinary
