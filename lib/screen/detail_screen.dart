import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/widgets/cast_and_crew_widget.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MovieDetailsScreen extends StatelessWidget {
  final dynamic movieSelected;

  const MovieDetailsScreen({super.key, required this.movieSelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text(
          "Movie App",
          style: GoogleFonts.prompt(
            color: Colors.white,
            fontWeight: FontWeight.bold
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
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI"
            ),
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                // background image
                Center(
                  child: Container(
                    width: 250,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(movieSelected.posterUrl),
                        fit: BoxFit.cover
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  movieSelected.title ?? 'Unknown',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${movieSelected.releaseYear ?? 'Unknown'}, ${movieSelected.director}",
                                  style: const TextStyle(
                                    color: Colors.white38,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${movieSelected.rating}',
                                style: const TextStyle(
                                  color: Colors.yellow
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
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: _buildGenreTagsWithSpacing(movieSelected.genre)
                        ),
                      ),
                      // story
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: ReadMoreText(
                                  movieSelected.description,
                                  trimLines: 3,
                                  trimMode: TrimMode.Line,
                                  moreStyle: const TextStyle(
                                    color: Colors.white24,
                                  ),
                                  lessStyle: const TextStyle(
                                    color: Colors.white30,
                                  ),
                                  style: const TextStyle(
                                    color: Colors.white70,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                CastAndCrewWidget(casts: movieSelected.cast),
                // Trailer 
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Trailer",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 300,
                              width: 450,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                image: DecorationImage(
                                  image: NetworkImage(movieSelected.trailerPoster),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                var url = movieSelected.trailerUrl;
                                if (kIsWeb) {
                                  // For web, use launchUrlString
                                  if (await canLaunchUrlString(url)) {
                                    await launchUrlString(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                } else {
                                  // For mobile, use launchUrl
                                  final uri = Uri.parse(url);
                                  if (await canLaunchUrl(uri)) {
                                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }
                              },
                              child: Container( 
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white24,
                                ),
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 40,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // comments
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Comments",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 17
                        ),
                      ),
                    ],
                  ),
                ),
                buildCommentCard(),
                const SizedBox(
                  height: 70,
                )
              ],
            ),
          ),

          Positioned(
          bottom: 30,
          left: 30,
          right: 30,
          child: InkWell(
            onTap: () async {
              var url = movieSelected.movieUrl!;
              if (kIsWeb) {
              // for web, use launchUrlString
                if  (await canLaunchUrlString(url)) {
                  await launchUrlString(url);
                } else {
                  throw 'Could not launch $url';
                }
              } else {
                // for mobile, use launchUrl
                final uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $url';
                }
              }
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  height: 50,
                  color: Colors.purple,
                  alignment: Alignment.center,
                  child: const Text(
                    "Watch Movie",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
  
  List<Widget> _buildGenreTagsWithSpacing(List<String> genre) {
    List<Widget> genreTags = [];
    for (int i = 0; i < genre.length; i++) {
      genreTags.add(buildTag(genre[i]));
      if (i < genre.length - 1) {
        genreTags.add(const SizedBox(width: 10)); // Add SizedBox between tags
      }
    }
    return genreTags;
  }

  Widget buildTag(String title) {
    return Container(
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
  // Widget buildTag(String title) {
  //   return Container(
  //     margin: const EdgeInsets.only(top: 20),
  //     padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
  //     decoration: BoxDecoration(
  //       color: Colors.white24,
  //       borderRadius: BorderRadius.circular(18),
  //     ),
  //     child: Text(
  //       title,
  //       style: const TextStyle(
  //         color: Colors.white38,
  //         fontSize: 16,
  //       ),
  //     ),
  //   );
  // }

  Widget buildCommentCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 170,
      child: ListView.builder(
        itemCount: movieSelected.comment!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[850],
            ),
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(movieSelected.comment![index]["imageUrl"]),
                            )
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movieSelected.comment![index]["name"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              movieSelected.comment![index]["date"],
                              style: const TextStyle(
                                color: Colors.white60
                              ),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              movieSelected.rating,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    movieSelected.comment![index]["comment"],
                    maxLines: 3,
                    style: const TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}