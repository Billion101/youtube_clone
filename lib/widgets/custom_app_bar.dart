import 'package:flutter/material.dart';

/// Custom app bar for the YouTube clone app
/// Reusable component that can be used across different pages
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
    this.iconColor = Colors.black,
    this.actions,
  });

  /// Factory constructor for YouTube-style home app bar
  factory CustomAppBar.youtubeHome() {
    return CustomAppBar(
      title: 'YouTube',
      backgroundColor: Colors.white,
      textColor: Colors.black,
      iconColor: Colors.black,
      actions: [
        IconButton(
          icon: const Icon(Icons.cast),
          onPressed: () {
            // TODO: Implement cast functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () {
            // TODO: Implement notifications functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // TODO: Implement search functionality
          },
        ),
        const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Text('U', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }

  /// Factory constructor for Shorts app bar
  factory CustomAppBar.shorts() {
    return CustomAppBar(
      title: 'Shorts',
      backgroundColor: Colors.black,
      textColor: Colors.white,
      iconColor: Colors.white,
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // TODO: Implement search functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {
            // TODO: Implement more options functionality
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      title: _buildTitle(),
      actions: actions?.map((action) => _applyIconColor(action)).toList(),
    );
  }

  /// Builds the title with YouTube logo for home page
  Widget _buildTitle() {
    if (title == 'YouTube') {
      return Row(
        children: [
          Icon(Icons.play_circle_fill, color: Colors.red, size: 32),
          const SizedBox(width: 8),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );
    }

    return Text(
      title,
      style: TextStyle(
        color: textColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  /// Applies the correct icon color to action widgets
  Widget _applyIconColor(Widget action) {
    if (action is IconButton) {
      return IconButton(
        icon: IconTheme(
          data: IconThemeData(color: iconColor),
          child: action.icon,
        ),
        onPressed: action.onPressed,
      );
    }
    return action;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
