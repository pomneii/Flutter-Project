import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/screen/detail_screen.dart';
import 'package:movieapp/screen/profile_screen.dart';
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
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: Text(
              'Movie App',
              style: GoogleFonts.prompt(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
              child: Row(
                children: [
                  Text(
                    "kiki",
                    style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                  width: 15
                  ), 
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("profile/img_profile.jpg")
                  )
                ],
              ),
            )
          ),
          const SizedBox(
            width: 20
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    readOnly: true,
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
                      prefixIcon: const Icon(
                        Icons.search
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Popular",
                        style: GoogleFonts.prompt(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.trending_up_rounded,
                        color: Colors.white54,
                        size: 26,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20
                ),
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
                const SizedBox(
                  height: 20,
                ),
                // Random Movie Section
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Text(
                      "Are you looking for a movie?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Random Movie",
                      style: GoogleFonts.prompt(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MovieDetailsScreen(movieSelected: getRandomMovie())
                      ),
                    );
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Center(
                      child: 
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          width: 140,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Movie Poster
                              Center(
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey
                                    ),
                                  ),
                              ),
                              const SizedBox(
                                height: 8
                              ),
                              // Movie Title
                              const Center(
                                child: Text(
                                  '???',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ),
                    )
                  ),
                const SizedBox(
                  height: 10
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: 
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MovieDetailsScreen(movieSelected: getRandomMovie())),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text(
                            "Click here!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                ),
                const SizedBox(
                  height: 10
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to get a random movie from the list
  Movie getRandomMovie() {
    final random = Random();
    int randomIndex = random.nextInt(movies.length);
    return movies[randomIndex];
  }
}
