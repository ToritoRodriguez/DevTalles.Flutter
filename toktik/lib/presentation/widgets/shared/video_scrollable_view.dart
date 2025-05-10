import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/widgets/shared/video_player/video_buttons.dart';
import 'package:toktik/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  
  final List<VideoPost> videos;
  
  const VideoScrollableView({
    super.key, 
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical, // Sirve para hacer scroll vertical
      physics: const BouncingScrollPhysics(), // Sirve para hacer este comportamiento de rebote
      
      itemCount: videos.length, // indica la cantidad de elementos que va a tener el PageView
      itemBuilder: ( context, index) {
        final VideoPost videoPost = videos[index]; 

        return Stack(
          children: [
            // VideoPlayer + gradient
            SizedBox.expand(
              child: FullscreenPlayer(
                caption: videoPost.caption,
                videoUrl: videoPost.videoUrl,
              ),
            ),

            // Botones
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost)
            ),
          ],
        );

      },
    );
  }
}