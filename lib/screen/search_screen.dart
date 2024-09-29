import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/screen/detail_screen.dart';
import 'package:movieapp/screen/home_screen.dart';
import 'package:movieapp/screen/profile_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _controller = TextEditingController(); // Define the controller

  static List<Movie> movieList = List.from(movies);
  List<Movie> displayList = List.from(movieList);
  
  void updateList(String value) {
    setState(() {
      displayList = movieList
        .where((movies) =>
            movies.title.toLowerCase().contains(value.toLowerCase()))
        .toList();
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose the controller when it's no longer needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded
          ),
          onPressed: () {
            Navigator.pop(context); // Change this to your desired navigation
          },
          color: Colors.white, // Change the arrow color here
        ),
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()), // Replace with your home page widget
                (Route<dynamic> route) => false, // This removes all the previous routes
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
                    backgroundImage: AssetImage('profile/img_profile.jpg')
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
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _controller, // Attach the controller to the TextField
                onChanged: (value) => updateList(value),
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
                  suffixIcon: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: 
                      GestureDetector(
                        onTap: () {
                          _controller.clear(); // Clear the text in the TextField
                          updateList(''); // Optionally, clear the filtered list too
                        },
                        child: const Icon(
                          Icons.clear,
                        ),
                      ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: displayList.isEmpty
            ? const Center(
              child: Text(
                "No result found",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
            )
            : ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: displayList.length,
                itemBuilder: (context, index) {
                  final movie = displayList[index]; // Correct list and location
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MovieDetailsScreen(movieSelected: movie)
                        ),
                      );
                    },
                    contentPadding: const EdgeInsets.all(8),
                    title: Text(
                      movie.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Text(
                      movie.releaseYear,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          movie.rating,
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 14,
                        )
                      ],
                    ),
                    leading: Image.asset(movie.posterUrl),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
