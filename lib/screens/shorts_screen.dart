import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/short_video_card.dart';
import '../widgets/custom_app_bar.dart';
import '../core/app_colors.dart';

/// Shorts screen that displays short videos in vertical scroll
/// Similar to TikTok or Instagram Reels format
class ShortsScreen extends StatelessWidget {
  const ShortsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDark,
      // Custom app bar for shorts
      appBar: CustomAppBar.shorts(),
      // Vertical scrolling short videos
      body: _buildShortsPageView(),
    );
  }

  /// Builds the vertical page view for shorts
  Widget _buildShortsPageView() {
    final shorts = MockData.shorts;

    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: shorts.length,
      itemBuilder: (context, index) {
        final short = shorts[index];
        return ShortVideoCard(short: short);
      },
    );
  }
}
