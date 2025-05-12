import 'package:toktik/domain/entities/video_post.dart';

// La hago abstracta porque no quiero que se creen instancia de esta clase
// las clases que voy a implementar van a ser datasource permitidos para que mis providers puedan obtener la informacion deseada
abstract class VideoPostDatasource {

  Future<List<VideoPost>> getFavoriteVideosByUser( String userId );

  Future<List<VideoPost>> getTrendingVideosByPage( int page );

}