import "package:flutter_test/flutter_test.dart";
import "package:southsea_cinema/models/movie.dart";
import "package:southsea_cinema/repositories/movie_repository.dart";

void main() {
  group("MovieRepository unit tests", () {
    test("getMovies returns two movies", () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      expect(movies.length, 2);
    });

    test("getMovies contains valid Catch Me If You Can and In Time", () {
      final MovieRepository repository = MovieRepository();
      final List<Movie> movies = repository.getMovies();

      final Movie catchMe = movies[0];
      expect(catchMe.id, "catch-me");
      expect(catchMe.title, "Catch Me If You Can");
      expect(catchMe.ticketPrice, 7.50);
      expect(catchMe.posterImagePath, isNotEmpty);

      final Movie inTime = movies[1];
      expect(inTime.id, "in-time");
      expect(inTime.title, "In Time");
      expect(inTime.ticketPrice, 8.00);
      expect(inTime.posterImagePath, isNotEmpty);
    });

    test("getMovieById returns matching movie when id exists", () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById("catch-me");

      expect(movie, isNotNull);
      expect(movie?.title, "Catch Me If You Can");
      expect(movie?.ticketPrice, 7.50);
    });

    test("getMovieById returns null when id does not exist", () {
      final MovieRepository repository = MovieRepository();
      final Movie? movie = repository.getMovieById("non-existent");

      expect(movie, isNull);
    });
  });
}
