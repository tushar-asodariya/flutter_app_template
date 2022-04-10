import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Platformごとにだし分けるBottomBar
class AdaptiveBottomBar extends StatelessWidget {
  const AdaptiveBottomBar({
    Key? key,
    required this.items,
    required this.backgroundColor,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final List<BottomNavigationBarItem> items;
  final Color backgroundColor;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoTabBar(
            items: items,
            backgroundColor: backgroundColor,
            currentIndex: currentIndex,
            onTap: onTap,
            iconSize: 24,
          )
        : BottomNavigationBar(
            items: items,
            backgroundColor: backgroundColor,
            currentIndex: currentIndex,
            onTap: onTap,
            selectedFontSize: 10,
            unselectedFontSize: 10,
            selectedItemColor: Theme.of(context).primaryColorDark,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
          );
  }
}