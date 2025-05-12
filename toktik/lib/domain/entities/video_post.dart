class VideoPost{

  final String caption;
  final String videoUrl;
  final int likes;
  final int views;
  final int comments;

  VideoPost({
    required this.caption, 
    required this.videoUrl, 
    this.likes = 0, 
    this.views = 0,
    this.comments = 0
  });

}