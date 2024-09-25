import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/screen/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static List<MovieModel> movieList = List.from(posterImage);

   // ignore: non_constant_identifier_names
  List<MovieModel> displayList = List.from(movieList);
  // filter our list
  void updateList(String value) {
    setState(() {
      displayList = movieList.where((element) => element.movieTitle!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Movie App",
              style: GoogleFonts.prompt(
                  fontWeight: FontWeight.bold, color: Colors.white)),
          // profile in the right
          actions: [
            Row(
              children: [
                Text(
                  "kiki",
                  style: GoogleFonts.prompt(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI")),
            const SizedBox(
              width: 50,
            )
          ],
      ),
      body: 
        Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value) => updateList(value),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none),
                            hintText: "Search",
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: const Icon(Icons.clear),
                        ),    
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: displayList.isEmpty
                      ?const Center(
                        child: 
                          Text(
                            "No result found", 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 22, fontWeight: 
                              FontWeight.bold
                            ),
                          )
                      ) : 
                      
                      ListView.builder(
                        padding: const EdgeInsets.only(left: 30),
                        itemCount: displayList.length,
                        itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailScreen()));
                          },
                          contentPadding: const EdgeInsets.all(8),
                          title: Text(
                            displayList[index].movieTitle!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            '${displayList[index].movieReleaseYear}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          trailing: Row(
                            // This ensures that the Row only takes up as much space as its children (the Text and the Icon), 
                            //instead of expanding to fill all available space, which might cause layout issues.
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "${displayList[index].movieRating}",
                                style: const TextStyle(
                                  color: Colors.yellow,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              )
                            ],
                          ),
                          leading: Image.network(displayList[index].moviePosterURL!),
                        ),
                      ),
                    )
                  ],
                ),
              ),
    );
  }
}