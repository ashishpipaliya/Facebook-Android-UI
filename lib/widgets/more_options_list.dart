import 'package:facebook_ui/constants/color_palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/user_card.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MoreOptionsList extends StatelessWidget {
  final User currentUser;

  final List<List> _moreOptionList = const [
    [MdiIcons.shieldAccount, Colors.deepPurple, 'Covid-19 Info Center'],
    [MdiIcons.accountMultiple, Colors.cyan, 'Friends'],
    [MdiIcons.facebookMessenger, ColorPalette.facebookBlue, 'Messenger'],
    [MdiIcons.flag, Colors.orange, 'Pages'],
    [MdiIcons.storefront, ColorPalette.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, ColorPalette.facebookBlue, 'Watch'],
    [MdiIcons.calendarStar, Colors.red, 'Events']
  ];

  const MoreOptionsList({Key key, this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 250.0),
      child: ListView.builder(
          itemCount: 1 + _moreOptionList.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: UserCard(
                  user: currentUser,
                ),
              );
            }
            final List option = _moreOptionList[index - 1];
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: _Option(
                icon: option[0],
                color: option[1],
                label: option[2],
              ),
            );
          }),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String label;

  const _Option({
    Key key,
    @required this.icon,
    @required this.color,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(label),
      child: Row(
        children: [
          Icon(icon, size: 38, color: color),
          const SizedBox(width: 6.0),
          Flexible(
              child: Text(
            label,
            style: TextStyle(fontSize: 16.0),
            overflow: TextOverflow.ellipsis,
          ))
        ],
      ),
    );
  }
}
