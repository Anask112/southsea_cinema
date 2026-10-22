import "package:flutter_test/flutter_test.dart";
import "package:southsea_cinema/models/movie.dart";

void main() {
  group("Movie model tests", () {
    test("creates Movie instance with given properties", () {
      const movie = Movie(
        id: "catch-me",
        title: "Catch Me If You Can",
        synopsis: "A young con artist charms his way across America.",
        ageRating: "12A",
        runtime: "141m",
        screeningTime: "19:30",
        ticketPrice: 15.00,
        posterImagePath: "assets/images/catch-me.png",
      );

      expect(movie.id, "catch-me");
      expect(movie.title, "Catch Me If You Can");
      expect(
          movie.synopsis, "A young con artist charms his way across America.");
      expect(movie.ageRating, "12A");
      expect(movie.runtime, "141m");
      expect(movie.screeningTime, "19:30");
      expect(movie.ticketPrice, 15.00);
      expect(movie.posterImagePath, "assets/images/catch-me.png");
    });

    test("formattedPrice formats whole-pound price with two decimal places",
        () {
      const movie = Movie(
        id: "test",
        title: "Test",
        synopsis: "Test",
        ageRating: "12A",
        runtime: "100m",
        screeningTime: "19:00",
        ticketPrice: 15.0,
        posterImagePath: "assets/images/test.png",
      );

      expect(movie.formattedPrice, "£15.00");
    });

    test("formattedPrice formats price with pence correctly", () {
      const movie = Movie(
        id: "test2",
        title: "Test 2",
        synopsis: "Test",
        ageRating: "12A",
        runtime: "100m",
        screeningTime: "19:00",
        ticketPrice: 8.5,
        posterImagePath: "assets/images/test.png",
      );

      expect(movie.formattedPrice, "£8.50");
    });
  });
}
