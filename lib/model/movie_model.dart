
class MovieModel {
  String? movieTitle;
  String? movieReleaseYear;
  String? moviePosterURL;
  String? movieRating;
  String? movieDirector;
  String? movieLong;
  String? movieStory;
  String? movieUrl;
  String? movieTrailer;

  final List<Map>? cast;
  final List<Map>? comment;
  final List movieGenres;

  MovieModel({
    this.movieTitle,
    this.movieReleaseYear,
    this.movieDirector,
    this.movieLong,
    this.moviePosterURL,
    this.movieRating,
    this.movieGenres = const [],
    this.movieStory,
    this.movieUrl,
    this.movieTrailer,
    this.comment,
    this.cast
  });
}

// Data
final movieList = [
    MovieModel(
        movieTitle: "Interstellar",
        movieReleaseYear: "2014",
        movieDirector: "Christopher Nolan",
        movieLong: "2h 49m",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s",
        movieRating: "8.7",
        movieTrailer: "https://www.youtube.com/watch?v=2LqzF5WauAw",
        movieUrl: "https://www.imdb.com/title/tt0816692/?ref_=tt_mv_close",
        movieGenres: [
          "Epic", "Sci-fi", "Drama"
        ],
        movieStory: "     In the near future, Earth is on the brink of ecological collapse. Dust storms ravage the land, and crops are failing, threatening humanity's survival. Cooper, a former NASA pilot turned farmer, lives with his family on a farm, trying to make the best of a bleak world. However, a mysterious gravitational anomaly leads Cooper to a secret NASA base where he's recruited for a daring mission: to travel through a newly discovered wormhole near Saturn. The goal is to find a new habitable planet for humanity, as Earth's resources are rapidly dwindling.",
        cast: [
          {
            "name": "Matthew McConaughey",
            "role": "Cooper",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_FMjpg_UX1000_.jpg"
          },
          {
            "name": "Anne Hathaway",
            "role": "Brand",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLoG1gBPLv_0Y5cR69tnKAGD4YjA2l4hv6AA&s"
          },
          {
            "name": "Jessica Chastain",
            "role": "Murph",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnMBxFr_-WTzGMMYraDKnNkj2sUA3DhLhV0g&s"
          },
          {
            "name": "Timothée Chalamet",
            "role": "Tom",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThlXA3IAUGvl2sDb6LnSlMLarUAhCOXcpBWMpoEK4MB_K8rTn90E5ggfaqaUVrJUTYxxA&usqp=CAU"
          },
          {
            "name": "John Lithgow",
            "role": "Donald",
            "image": "https://m.media-amazon.com/images/M/MV5BMTQzMzUyNDkzNF5BMl5BanBnXkFtZTcwNTMwNTU5MQ@@._V1_.jpg"
          },
        ],
        comment: [
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Sophia Reynolds",
            "date": "June 12, 2013",
            "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Liam Carter",
            "date": "January 6, 2007",
            "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Olivia Bennett",
            "date": "March 16, 2008",
            "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Noah Mitchell",
            "date": "July 21, 2005",
            "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Ava Harrison",
            "date": "December 12, 2007",
            "comment": "This movie has stayed with me long after I watched it, and I'll definitely be recommending it to everyone I know."
          },
        ]
        ),
    MovieModel(
        movieTitle: "Inception",
        movieReleaseYear: "2010",
        movieDirector: "Christopher Nolan",
        movieLong: "2h 28m",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkq35zEZtIgZWAHKWdGD_IRMUx-c9EOgrcQ&s",
        movieRating: "8.8",
        movieTrailer: "https://youtu.be/YoHD9XEInc0?si=0zRvKdC-P1dNGUuJ",
        movieUrl: "https://www.imdb.com/title/tt1375666/",
        movieGenres: ["Action", "Sci-fi", "Psychological Thriller"],
        movieStory: "     The story of Inception begins with Dom Cobb, a skilled thief who specializes in stealing secrets from within the subconscious during the dream state. Cobb is a master of extraction, a rare and dangerous form of corporate espionage. Along with his partner Arthur, they infiltrate dreams to obtain valuable information. \n     One day, Cobb is approached by a wealthy businessman, Saito, with a bold and nearly impossible task: perform inception—not to steal an idea, but to plant one. If Cobb can pull off this highly dangerous mission, it will give him a chance to reclaim a life he thought he had lost forever. Cobb assembles a team of specialists to undertake the ultimate heist, where the lines between dreams and reality blur.",
        cast: [
          {
            "name": "Matthew McConaughey",
            "role": "Cooper",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_FMjpg_UX1000_.jpg"
          },
          {
            "name": "Anne Hathaway",
            "role": "Brand",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLoG1gBPLv_0Y5cR69tnKAGD4YjA2l4hv6AA&s"
          },
          {
            "name": "Jessica Chastain",
            "role": "Murph",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnMBxFr_-WTzGMMYraDKnNkj2sUA3DhLhV0g&s"
          },
          {
            "name": "Timothée Chalamet",
            "role": "Tom",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThlXA3IAUGvl2sDb6LnSlMLarUAhCOXcpBWMpoEK4MB_K8rTn90E5ggfaqaUVrJUTYxxA&usqp=CAU"
          },
          {
            "name": "John Lithgow",
            "role": "Donald",
            "image": "https://m.media-amazon.com/images/M/MV5BMTQzMzUyNDkzNF5BMl5BanBnXkFtZTcwNTMwNTU5MQ@@._V1_.jpg"
          },
        ],
        comment: [
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Sophia Reynolds",
            "date": "June 12, 2013",
            "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Liam Carter",
            "date": "January 6, 2007",
            "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Olivia Bennett",
            "date": "March 16, 2008",
            "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Noah Mitchell",
            "date": "July 21, 2005",
            "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "Ava Harrison",
            "date": "December 12, 2007",
            "comment": "This movie has stayed with me long after I watched it, and I'll definitely be recommending it to everyone I know."
          },
        ]
      ),
    MovieModel(
        movieTitle: "The Matrix",
        movieReleaseYear: "1999",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSjSWOCaw5dnDL2GT1zFd9RMCgUGw5Q2Cfg&s",
        movieRating: "8.7"),
    MovieModel(
        movieTitle: "Fight Club",
        movieReleaseYear: "1999",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZPGAZtd0UeDLMpcACoX6lPFBXeScJnvO7yQ&s",
        movieRating: "8.8"),
    MovieModel(
        movieTitle: "The Dark Knight",
        movieReleaseYear: "2008",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhi1arS70w_kXQTF-GctH3Vz_vXSLK3ZxHVQ&s",
        movieRating: "9.0"),
    MovieModel(
        movieTitle: "Interstellar",
        movieReleaseYear: "2014",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s",
        movieRating: "8.7"),
    MovieModel(
        movieTitle: "Inception",
        movieReleaseYear: "2010",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkq35zEZtIgZWAHKWdGD_IRMUx-c9EOgrcQ&s",
        movieRating: "8.8"),
    MovieModel(
        movieTitle: "The Matrix",
        movieReleaseYear: "1999",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSjSWOCaw5dnDL2GT1zFd9RMCgUGw5Q2Cfg&s",
        movieRating: "8.7"),
    MovieModel(
        movieTitle: "Fight Club",
        movieReleaseYear: "1999",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZPGAZtd0UeDLMpcACoX6lPFBXeScJnvO7yQ&s",
        movieRating: "8.8"),
    MovieModel(
        movieTitle: "The Dark Knight",
        movieReleaseYear: "2008",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhi1arS70w_kXQTF-GctH3Vz_vXSLK3ZxHVQ&s",
        movieRating: "9.0"),
];