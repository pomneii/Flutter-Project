import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/screen/search_screen.dart';
import 'package:movieapp/widgets/custom_card_widget.dart';
import '../model/movie_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          'Movie App',
          style: GoogleFonts.prompt(
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        actions: [
          Row(
            children: [
              Text(
                "kiki",
                style: GoogleFonts.prompt(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
              ),
            ],
          ),
          const SizedBox(width: 15),
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI"),
          ),
          const SizedBox(
            width: 10,
          ),
          const Icon(
            FontAwesomeIcons.chevronDown,
            color: Colors.white,
            size: 16,
          ),
          const SizedBox(
            width: 10,
          )

        ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      readOnly: true, // This disables editing of the TextField
                      onTap: () {
                        // Navigate to SearchScreen when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SearchScreen()
                          ),
                        );
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Search",
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular",
                          style: GoogleFonts.prompt(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "See all",
                          style: GoogleFonts.prompt(
                              fontSize: 17,
                              color: const Color.fromARGB(255, 170, 166, 166)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        final movie = movies[index];
                        return CustomCardNormal(movie: movie);
                      },
                    ),
                  ),
                ],
              ),
            )
          )
        ],
      )
    );
  }
}