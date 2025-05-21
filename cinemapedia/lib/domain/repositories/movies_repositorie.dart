import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesRepositorie {

  // Este es nuestro origen de dato, mediante de este voy a obtener los datos del datasource
  Future<List<Movie>>getNowPlayingMovies({ int page = 1 });

}