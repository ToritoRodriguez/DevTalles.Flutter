import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDatasource {

  // Como van a verse los datos de peliculas
  // Defino los metodos que voy a usar
  Future<List<Movie>>getNowPlayingMovies({ int page = 1 });

}