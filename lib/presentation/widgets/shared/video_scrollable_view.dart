import 'package:flutter/material.dart';
import 'package:tok_tik_app/presentation/widgets/shared/video_buttons.dart';

import '../../../domain/entities/video_post.dart';
import '../video/full_screen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            //Video player + gradiente
            SizedBox.expand(
                child: FullScreenPlayer(
                    videoUrl: videoPost.videoUrl, caption: videoPost.caption)),
            // Botones
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}
