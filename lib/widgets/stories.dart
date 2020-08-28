import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_ui/constants/color_palette.dart';
import 'package:facebook_ui/models/models.dart';
import 'package:facebook_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({
    this.currentUser,
    this.stories,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Responsive.isMobile(context)
          ? ColorPalette.white
          : Colors.transparent,
      child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: StoryBox(isAddStory: true, currentUser: currentUser),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: StoryBox(story: story));
          }),
    );
  }
}

class StoryBox extends StatelessWidget {
  final User currentUser;
  final isAddStory;
  final Story story;

  const StoryBox({
    Key key,
    this.currentUser,
    this.isAddStory = false,
    this.story,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
            height: double.infinity,
            width: 110.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110.0,
          decoration: BoxDecoration(
            gradient: ColorPalette.storyGradient,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: Responsive.isDesktop(context)
                ? const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 4.0,
                    )
                  ]
                : null,
          ),
        ),
        Positioned(
          left: 8.0,
          top: 8.0,
          child: isAddStory
              ? Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: ColorPalette.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 30.0,
                      color: ColorPalette.facebookBlue,
                      icon: Icon(Icons.add),
                      onPressed: () => print('Add Story Button')),
                )
              : ProfileAvatar(
                  imageUrl: story.user.imageUrl,
                  hasBorder: !story.isViewed,
                ),
        ),
        Positioned(
            left: 8.0,
            bottom: 8.0,
            right: 8.0,
            child: Text(
              isAddStory ? 'Add to Story' : story.user.name,
              style: const TextStyle(
                  color: ColorPalette.white, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ))
      ],
    );
  }
}
