//CODE FROM STORY_VIEW EXAMPLE

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_app/config/app_dimens.dart';
import 'package:social_app/models/whatsapp_story.dart';
import 'package:social_app/providers/store.dart';

class StatusFull extends StatefulWidget {
  const StatusFull({Key? key}) : super(key: key);

  @override
  State<StatusFull> createState() => _StatusFullState();
}

class _StatusFullState extends State<StatusFull> {
  @override
  void initState() {
    super.initState();
    Provider.of<Store>(context, listen: false).getWhatsappStories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Store>(builder: (context, store, child) {
        if (store.loading) {
          return const Center(
            child: SizedBox(
              width: AppDimens.fixed40,
              height: AppDimens.fixed40,
              child: CircularProgressIndicator(),
            ),
          );
        }
        return StoryViewDelegate(stories: store.whatsappStories);
      }),
    );
  }
}

class StoryViewDelegate extends StatefulWidget {
  final List<WhatsappStory> stories;

  const StoryViewDelegate({
    Key? key,
    required this.stories,
  }) : super(key: key);

  @override
  _StoryViewDelegateState createState() => _StoryViewDelegateState();
}

class _StoryViewDelegateState extends State<StoryViewDelegate> {
  // final StoryController controller = StoryController();
  // List<StoryItem> storyItems = [];

  String when = "";

  @override
  void initState() {
    super.initState();
    for (var story in widget.stories) {
      if (story.mediaType == MediaType.text) {
        // storyItems.add(
        //   StoryItem.text(
        //     title: story.caption,
        //     backgroundColor: HexColor(story.color),
        //     duration: Duration(
        //       milliseconds: (story.duration * 1000).toInt(),
        //     ),
        //   ),
        // );
      }

      if (story.mediaType == MediaType.image) {
        // storyItems.add(StoryItem.pageImage(
        //   url: story.media,
        //   controller: controller,
        //   caption: story.caption,
        //   duration: Duration(
        //     milliseconds: (story.duration * 1000).toInt(),
        //   ),
        // ));
      }

      if (story.mediaType == MediaType.video) {
        // storyItems.add(
        //   StoryItem.pageVideo(
        //     story.media,
        //     controller: controller,
        //     duration: Duration(milliseconds: (story.duration * 1000).toInt()),
        //     caption: story.caption,
        //   ),
        // );
      }
    }

    when = widget.stories[0].when;
  }

  Widget _buildProfileView() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage(
              "https://post.healthline.com/wp-content/uploads/2019/02/How-to-Become-a-Better-Person-in-12-Steps_1200x628-facebook.jpg"),
        ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Matt Redman",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                when,
                style: TextStyle(
                  color: Colors.white38,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        //   children: <Widget>[
        //     StoryView(
        //       storyItems: storyItems,
        //       controller: controller,
        //       onComplete: () {
        //         Navigator.of(context).pop();
        //       },
        //       onVerticalSwipeComplete: (v) {
        //         if (v == Direction.down) {
        //           Navigator.pop(context);
        //         }
        //       },
        //       onStoryShow: (storyItem) {
        //         int pos = storyItems.indexOf(storyItem);

        // the reason for doing setState only after the first
        // position is becuase by the first iteration, the layout
        // hasn't been laid yet, thus raising some exception
        // (each child need to be laid exactly once)
        //         if (pos > 0) {
        //           setState(() {
        //             when = widget.stories[pos].when;
        //           });
        //         }
        //       },
        //     ),
        //     Container(
        //       padding: EdgeInsets.only(
        //         top: 48,
        //         left: 16,
        //         right: 16,
        //       ),
        //       child: _buildProfileView(),
        //     )
        //   ],
        );
  }
}
