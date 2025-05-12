import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';

class DiscoverProvider extends ChangeNotifier{

  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videoPostRepository
  });

  Future<void> loadNextPage() async {

    // final List<VideoPost> newVideos = videoPosts.map( 
    //   (video) => LocalVideoModel.fromJson(video).toVideoPostEntity()
    // ).toList();

    final newVideos = await videoPostRepository.getTrendingVideosByPage(videos.length ~/ 10 + 1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }

}