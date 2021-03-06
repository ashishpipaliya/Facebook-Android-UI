import 'package:facebook_ui/constants/color_palette.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;

  CircleButton({
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey.shade200, shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: ColorPalette.black,
        onPressed: onPressed,
      ),
    );
  }
}
