import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieapp/model/movie_model.dart';
import 'package:movieapp/widgets/cast_and_crew_widget.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  List<MovieModel> popularItems = List.of(posterImage);

  @override
  Widget build(BuildContext context) {
    // Fetch the first movie's data dynamically
    final movie = popularItems[0];
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                        image: NetworkImage(movie.moviePosterURL.toString()),
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.movieTitle ?? 'Unknown',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Text(
                                "${movie.movieReleaseYear ?? 'Unknown'}, Christopher Nolan",
                                style: const TextStyle(
                                  color: Colors.white38,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                movie.movieRating?.toString() ?? 'N/A',
                                style: const TextStyle(
                                  color: Colors.yellow
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14,
                              )
                            ],
                          )
                        ],
                      ),
                      // Genres Tags
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildTag("Epic"),
                          const SizedBox(width: 10,),
                          buildTag("Sci-fi"),
                          const SizedBox(width: 10,),
                          buildTag("Drama"),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // story
                      const SizedBox(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: ReadMoreText(
                                  "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel accusamus facilis magnam officia eos exercitationem sint aliquid culpa eaque, ratione reiciendis numquam veritatis, labore aperiam nostrum ipsa quisquam cupiditate! Nam.",
                                  trimLines: 3,
                                  trimMode: TrimMode.Line,
                                  moreStyle: TextStyle(
                                    color: Colors.white24,
                                  ),
                                  lessStyle: TextStyle(
                                    color: Colors.white30,
                                  ),
                                  style: TextStyle(
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
                // Check if there is cast data before rendering the CastAndCrewWidget
                // if (movie.cast != null)
                //   CastAndCrewWidget(casts: movie.cast!)
                // else
                //   const SizedBox(), // In case there's no cast, render an empty widget
                CastAndCrewWidget(casts: movie.cast!),
                // Trailer 
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trailer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 300,
                            width: 450,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: const DecorationImage(
                                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLREY3yiaEjRsumfi7Wul4nBjeKyqEcPJnBg&s"),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              const url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
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
          //InkWell(
          //   onTap: () async {
          //     const url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
          //       if (kIsWeb) {
          //         // For web, use launchUrlString
          //         if (await canLaunchUrlString(url)) {
          //           await launchUrlString(url);
          //         } else {
          //           throw 'Could not launch $url';
          //         }
          //       } else {
          //         // For mobile, use launchUrl
          //         final uri = Uri.parse(url);
          //         if (await canLaunchUrl(uri)) {
          //           await launchUrl(uri, mode: LaunchMode.externalApplication);
          //         } else {
          //           throw 'Could not launch $url';
          //         }
          //       }
          //   },
          //   child: Container( 
          //     padding: const EdgeInsets.all(10),
          //     decoration: const BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.white24,
          //     ),
          //     child: Icon(
          //       Icons.play_arrow_rounded,
          //       color: Colors.white.withOpacity(0.8),
          //       size: 40,
          //     ),
          //   ),
          // )
          Positioned(
              bottom: 30,
              left: 30,
              right: 30,
              child: 
          
          InkWell(
            onTap: () async {
              const url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ';
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
          // Positioned(
          //   bottom: 30,
          //   left: 30,
          //   right: 30,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.circular(18),
          //     child: Container(
          //       height: 50,
          //       color: Colors.purple,
          //       alignment: Alignment.center,
          //       child: const Text(
          //         "Watch Movie",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15,
          //         ),
          //       ),
          //     ),
          //   )
          // )
        ],
      ),
    );
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

  Widget buildCommentCard() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 170,
      child: ListView.builder(
        itemCount: popularItems[0].comment!.length,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(popularItems[0].comment![index]["imageUrl"]),
                        )
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              popularItems[0].comment![index]["name"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            Text(
                              popularItems[0].movieRating!,
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
                              size: 22,
                            )
                          ],
                        ),
                        Text(
                          popularItems[0].comment![index]["date"],
                          style: const TextStyle(
                            color: Colors.white60
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    popularItems[0].comment![index]["comment"],
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

