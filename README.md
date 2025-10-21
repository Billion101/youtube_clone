# YouTube Clone Flutter App

A Flutter application that mimics the YouTube interface with 4 main pages accessible through a bottom navigation bar.

## Features

### 🏠 Home Page

- Displays a list of video thumbnails with mock data
- Shows video titles, channel names, view counts, and upload times
- YouTube-style app bar with search and notification icons
- Video cards with channel avatars and more options menu

### 📱 Shorts Page

- Vertical scrolling short video interface
- Full-screen video cards with overlay controls
- Like, dislike, comment, and share buttons
- Subscribe button for each channel
- Black background for immersive experience

### 📺 Subscriptions Page

- Horizontal scrollable list of subscribed channels
- Recent videos from subscribed channels
- Complete list of all subscriptions
- Channel avatars and subscriber counts

### 👤 Profile Page

- User channel information and avatar
- Channel management options
- Menu items for videos, downloads, history, playlists
- Settings and help options
- YouTube Premium promotion section

## Project Structure

```
lib/
├── main.dart              # Main app entry point with navigation
├── pages/
│   ├── home_page.dart     # Home page with video list
│   ├── shorts_page.dart   # Shorts page with vertical videos
│   ├── subscriptions_page.dart # Subscriptions and channels
│   └── profile_page.dart  # User profile and settings
```

## Mock Data

The app uses placeholder data for:

- Video thumbnails and information
- Channel names and subscriber counts
- View counts and upload times
- User interactions (likes, comments)

## Getting Started

1. Ensure Flutter is installed on your system
2. Clone this repository
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

## Technologies Used

- Flutter SDK
- Material Design components
- Bottom Navigation Bar
- PageView for shorts
- ListView for video feeds
- Mock data for demonstration
# youtube_clone
