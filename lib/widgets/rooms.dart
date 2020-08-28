import 'package:facebook_ui/constants/color_palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key key, this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      elevation: isDesktop ? 1.0 : 0.0,
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        height: 50.0,
        color: ColorPalette.white,
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
            itemCount: 1 + onlineUsers.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CreateRoomButton(),
                );
              }
              final User user = onlineUsers[index - 1];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: ProfileAvatar(
                  imageUrl: user.imageUrl,
                  isActive: true,
                ),
              );
            }),
      ),
    );
  }
}

class CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Create Room bro'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: ColorPalette.white,
      borderSide: BorderSide(width: 2.0, color: Colors.blueAccent.shade100),
      textColor: ColorPalette.facebookBlue,
      child: Row(
        children: [
          // ShaderMask(
          //   shaderCallback: (value) =>
          //       ColorPalette.roomGradient.createShader(value),
          //   child: Icon(
          //     Icons.video_call,
          //     color: ColorPalette.white,
          //     size: 30.0,
          //   ),
          // ),
          Icon(
            Icons.video_call,
            color: Colors.purple,
            size: 30.0,
          ),
          const SizedBox(width: 4.0),
          Text('Create\nRoom'),
        ],
      ),
    );
  }
}
