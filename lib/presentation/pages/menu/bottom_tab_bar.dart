import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:seeyoulaternavigator/presentation/theme/app_icons.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  final int selectedIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 60,
      backgroundColor: Colors.black,
      items: const [
        Icon(AppIcons.starWars, size: 30),
        Icon(AppIcons.oneRing, size: 30),
      ],
      onTap: onTap,
      index: selectedIndex,
    );
  }
}
