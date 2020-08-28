import 'package:facebook_ui/constants/color_palette.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData> icons;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar({
    Key key,
    @required this.icons,
    @required this.selectedIndex,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
          border: Border(
              bottom: BorderSide(
        color: ColorPalette.facebookBlue,
        width: 3.0,
      ))),
      tabs: icons
          .asMap()
          .map((index, e) => MapEntry(
              index,
              Tab(
                icon: Icon(
                  e,
                  color: index == selectedIndex
                      ? ColorPalette.facebookBlue
                      : Colors.black54,
                  size: 25.0,
                ),
              )))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
