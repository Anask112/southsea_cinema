import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatefulWidget {
  const MovieListing({super.key});

  @override
  State<MovieListing> createState() => _MovieListingState();
}

class _MovieListingState extends State<MovieListing> {
  int _ticketQuantity = 1;


  void _addToOrder() {
    setState(() {
      _feedbackMessage = "$_ticketQuantity ticket(s) added to your order";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 2,
      ),
      drawer: const NavDrawer(),
      body: Container(
        color:cinemaBackground ,
        child: Column(
          children: [
            Text("catch me if you can"),
            Text(
                "After repeatedly getting into trouble a student decided to leave his hometown in search for everything he ever wanted in life through fake checks and becoming a con"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Runtime: 141m"),
                Text("Age rating: PG-13"),
              ],
            ),
            DropdownMenu<int>(
              initialSelection: 1,
              onSelected: (int? value) {
                if (value != null) {
                  setState(() {
                    _ticketQuantity = value;
                  });
                }
              },
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: '1 ticket'),
                DropdownMenuEntry(value: 2, label: '2 tickets'),
                DropdownMenuEntry(value: 3, label: '3 tickets'),
                DropdownMenuEntry(value: 4, label: '4 tickets'),
                DropdownMenuEntry(value: 5, label: '5 tickets'),
              ],
            ),
            ElevatedButton(
              onPressed: _addToOrder,
              child: const Text('Add to order'),
            ),
            Text(_feedbackMessage),
          ],
        ),
      ),
    );
  }
}
