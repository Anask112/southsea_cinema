import "package:southsea_cinema/models/movie.dart";

class MovieRepository {
  List<Movie> getMovies() {
    return [
      Movie(
        id: "catch-me",
        title: "Catch Me If You Can",
        synopsis:
            "A young con artist charms his way across America with fake cheques.",
        ageRating: "12A",
        runtime: "141m",
        screeningTime: "19:30",
        ticketPrice: 7.50,
        posterImagePath: "assets/images/catch-me.png",
      ),
      Movie(
        id: "in-time",
        title: "In Time",
        synopsis:
            "In a world where time is currency, one man fights to survive.",
        ageRating: "12A",
        runtime: "109m",
        screeningTime: "20:00",
        ticketPrice: 8.00,
        posterImagePath: "assets/images/in-time.png",
      ),
    ];
  }
}
