//! Mapeo la info del video local a un modelo 

import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel {

  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
      name: json['name'] ?? 'No video name found',
      videoUrl: json['videoUrl'],
      likes: json['likes'] ?? 0,
      views: json['views'] ?? 0,
  );

  VideoPost toVideoPostEntity() => VideoPost(
    // El name, videourl, likes y views son de la instancia ya creada en el momento que llamemos al VideoPost
    // Estamos haciendo la conversion de LocalVideoModel a VideoPost
    caption: name,
    videoUrl: videoUrl,
    likes: likes,
    views: views,
  );
}