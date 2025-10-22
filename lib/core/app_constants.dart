/// App-wide constants
/// Centralized place to manage all constant values used in the app
class AppConstants {
  // App information
  static const String appName = 'YouTube Clone';
  static const String appVersion = '1.0.0';

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  static const double defaultBorderRadius = 8.0;
  static const double smallBorderRadius = 4.0;
  static const double largeBorderRadius = 16.0;

  // Video constants
  static const double videoThumbnailHeight = 200.0;
  static const double videoCardPadding = 12.0;
  static const double channelAvatarRadius = 20.0;

  // Shorts constants
  static const double shortActionButtonSize = 28.0;
  static const double shortChannelAvatarRadius = 16.0;

  // Animation durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  // Navigation
  static const List<String> bottomNavLabels = [
    'Home',
    'Shorts',
    'Subscriptions',
    'Profile',
  ];

  // Placeholder URLs (for development)
  static const String placeholderVideoThumbnail =
      'https://via.placeholder.com/320x180';
  static const String placeholderShortThumbnail =
      'https://via.placeholder.com/300x500';
  static const String placeholderAvatar = 'https://via.placeholder.com/40x40';
}
