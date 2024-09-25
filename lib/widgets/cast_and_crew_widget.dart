import 'package:flutter/material.dart';

class CastAndCrewWidget extends StatelessWidget {
  final List casts;
  const CastAndCrewWidget({super.key, required this.casts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Cast",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: casts.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return castCard(casts[index]);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget castCard(final Map cast) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 160,  // Ensure this width is enough for the content
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Aligns content to the left
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                // Using NetworkImage for online images
                image: NetworkImage(cast["image"]!),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Text(
              cast["name"],
              maxLines: 2,
              textAlign: TextAlign.left,  // Left-aligned text
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,  // Adjust the font size if needed
              ),
            ),
          ),
        ],
      ),
    );
  }

}