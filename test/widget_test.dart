import "package:flutter_test/flutter_test.dart";
import "package:southsea_cinema/main.dart";
import "package:southsea_cinema/widgets/movie_card.dart";

void main() {
  group("App smoke tests", () {
    testWidgets("App displays home page with title",
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());
      expect(find.text("Southsea Cinema"), findsOneWidget);
    });

    testWidgets("Displays movie cards with titles and booking buttons",
        (WidgetTester tester) async {
      await tester.pumpWidget(const SouthseaCinemaApp());

      expect(find.text("Catch Me If You Can"), findsOneWidget);
      expect(find.text("In Time"), findsOneWidget);
      expect(find.text("Book"), findsNWidgets(2));
      expect(find.byType(MovieCard), findsNWidgets(2));
    });
  });
}
