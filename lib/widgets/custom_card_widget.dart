import 'package:flutter/material.dart';

class CustomCardNormal extends StatelessWidget {
  final dynamic movieModel;
  
  const CustomCardNormal({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 140,  // Fixed width for each card
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie Poster
          Container(
            height: 150,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                // Using NetworkImage for online images
                image: movieModel.moviePosterURL!.startsWith('http') 
                    ? NetworkImage(movieModel.moviePosterURL!) 
                    : AssetImage(movieModel.moviePosterURL!) as ImageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8), // Slight spacing between the image and title
          // Movie Title
          Text(
            '${movieModel.movieTitle!}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,  // Handle long titles
            maxLines: 1,  // Limit to one line
          ),
          const SizedBox(height: 5),
          // Movie Rating
          Text(
            'Rating: ${movieModel.movieRating}',
            style: const TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
