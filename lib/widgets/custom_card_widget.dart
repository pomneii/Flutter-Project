import 'package:flutter/material.dart';
import 'package:movieapp/screen/detail_screen.dart';

class CustomCardNormal extends StatelessWidget {
  final dynamic movie;
  
  const CustomCardNormal({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovieDetailsScreen(movieSelected: movie)));
      },
      child: Stack(
        children: [
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
                      image: DecorationImage(
                        // Using NetworkImage for online images
                        image: NetworkImage(movie.posterUrl!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8
                ),
                // Movie Title
                Text(
                  '${movie.title!} (${movie.releaseYear})',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,  // Handle long titles
                  maxLines: 1,  // Limit to one line
                ),
                const SizedBox(
                  height: 5
                ),
                // Movie Rating
                Row(
                  children: [
                    Text(
                      'Rating : ${movie.rating}',
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.star_rate, 
                      color: Colors.yellow,
                      size: 13,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ); 
  }
}
