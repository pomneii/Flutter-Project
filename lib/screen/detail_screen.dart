import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/movie_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  List<MovieModel> popularItems = List.of(posterImage);

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
            const SizedBox(width: 50,),
          ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30,),
                // background image
                Center(
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(popularItems[0].moviePosterURL.toString()),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Interstellar",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                "2014, Christopher Nolan",
                                style: TextStyle(
                                  color: Colors.white38,
                                  fontSize: 14,
                                ),
                              ),
                              
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "8.7",
                                style: TextStyle(
                                  color: Colors.yellow
                                ),
                              ),
                              SizedBox(width: 5,),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTag("Epic"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget buildTag(String title) {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    decoration: BoxDecoration(
      color: Colors.white24,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white38,
        fontSize: 16,
      ),
    ),
  );
}