
class Movie {
  final int id;
  final String title;
  final String description;
  final List<String> genre;
  final String posterUrl;
  final String releaseYear;
  final String rating;
  final String director;
  final List<Map>? cast;
  final String trailerUrl;
  final String movieUrl;
  final List<Map>? comment;
  final String trailerPoster;

  Movie({
    required this.id,
    required this.title,
    required this.description,
    required this.genre,
    required this.posterUrl,
    required this.releaseYear,
    required this.rating,
    required this.director,
    required this.cast,
    required this.trailerUrl,
    required this.movieUrl,
    required this.comment,
    required this.trailerPoster
  });
}

// A sample list of movies
final List<Movie> movies = [
  Movie(
    id: 1,
    title: "Interstellar",
    director: "Christopher Nolan",
    description: "     In the near future, Earth is on the brink of ecological collapse. Dust storms ravage the land, and crops are failing, threatening humanity's survival. Cooper, a former NASA pilot turned farmer, lives with his family on a farm, trying to make the best of a bleak world. However, a mysterious gravitational anomaly leads Cooper to a secret NASA base where he's recruited for a daring mission: to travel through a newly discovered wormhole near Saturn. The goal is to find a new habitable planet for humanity, as Earth's resources are rapidly dwindling.",
    genre: ["Sci-Fi", "Drama"],
    posterUrl: "https://m.media-amazon.com/images/M/MV5BYzdjMDAxZGItMjI2My00ODA1LTlkNzItOWFjMDU5ZDJlYWY3XkEyXkFqcGc@._V1_.jpg",
    releaseYear: "2010",
    rating: "8.7",
    trailerUrl: "https://www.youtube.com/watch?v=2LqzF5WauAw",
    movieUrl: "https://www.imdb.com/title/tt0816692/?ref_=tt_mv_close",
    trailerPoster: "https://images.newrepublic.com/589a211a83fd0ad920d76139a98bd2829a38fff7.jpeg?auto=format&fit=crop&crop=faces&q=65&w=1000&h=undefined&ar=3%3A2&ixlib=react-9.0.2&w=1000.jpg",
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
  Movie(
    id: 2,
    title: "The Matrix",
    director: "The Wachowskis",
    description: "     In a future where technology reigns supreme, a quiet yet brilliant computer hacker named Neo finds himself questioning the reality of the world around him. Strange messages, cryptic encounters, and a sense of something missing lead him down a path he never expected. As his curiosity grows, Neo is drawn into a shadowy underworld, where the line between illusion and truth blurs, and he must decide whether to explore what lies beyond the reality he knows. What he discovers could change everything.",
    genre: ["Action", "Artificial Intelligence", "Sci-fi"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSjSWOCaw5dnDL2GT1zFd9RMCgUGw5Q2Cfg&s",
    releaseYear: "1999",
    rating: "8.7",
    trailerPoster: "https://m.media-amazon.com/images/M/MV5BNDQ4NTRmN2ItYjgzMS00MzY3LWEwNmYtYmE2ODllZDdhNGI1XkEyXkFqcGdeQXdvbmtpbQ@@._V1_QL75_UY281_CR20,0,500,281_.jpg",
    trailerUrl: "https://youtu.be/vKQi3bBA1y8?si=mn8ViYU74j-DQ3OE",
    movieUrl: "https://www.imdb.com/title/tt0133093/?ref_=tt_mv_close",
    cast: [
      {
        "name": "Keanu Reeves",
        "role": "Neo",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTv8nMpBHd1PuGba4kLQLYCm6seBpZ0CuWPoA&s"
      },
      {
        "name": "Laurence Fishburne",
        "role": "	Morpheus",
        "image": "https://m.media-amazon.com/images/M/MV5BMTc0NjczNDc1MV5BMl5BanBnXkFtZTYwMDU0Mjg1._V1_FMjpg_UX1000_.jpg"
      },
      {
        "name": "Carrie-Anne Moss",
        "role": "Trinity",
        "image": "https://m.media-amazon.com/images/M/MV5BMTYxMjgwNzEwOF5BMl5BanBnXkFtZTcwNTQ0NzI5Ng@@._V1_FMjpg_UX1000_.jpg"
      },
      {
        "name": "Hugo Weaving",
        "role": "Agent Smith",
        "image": "https://m.media-amazon.com/images/M/MV5BMjAxMzAyNDQyMF5BMl5BanBnXkFtZTcwOTM4ODcxMw@@._V1_.jpg"
      },
      {
        "name": "Gloria Foster",
        "role": "Oracle",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpYqD9EXTswxneq7x8VhLpLdq17x3Tf7siUw&s"
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
  Movie(
    id: 3,
    title: "The Dark Knight",
    director: "Christopher Nolan",
    description: "     In a city on the edge of chaos, Gotham's guardian, Batman, continues his relentless fight against crime, striking fear into the hearts of criminals. But as hope begins to rise, a new and unpredictable force emerges from the shadows: a criminal mastermind known only as The Joker. With Gotham’s soul hanging in the balance, Batman is pushed to his limits as he faces an enemy unlike any he has ever encountered, one who thrives on anarchy and destruction. In this escalating battle, the line between hero and villain begins to blur, and the true cost of justice is revealed.",
    genre: ["Action", "Superhero", "Drama"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3ekE6Hhz9gvIbiFSUPxt-FyAh4zXTXX0bjQ&s",
    releaseYear: "2008",
    rating: "9.0",
    trailerPoster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNHwu-1MXf5Pzn6rIjcPu3yd5UXozhZJvU4A&s",
    trailerUrl: "https://youtu.be/EXeTwQWrcwY?si=2zN5SQRci22ljG3v",
    movieUrl: "https://www.imdb.com/title/tt0468569/?ref_=nv_sr_srsg_0_tt_7_nm_1_in_0_q_the%2520dar",
    cast: [
      {
        "name": "Christian Bale",
        "role": "Bruce Wayne / Batman",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Q0zpeUW2Az4czxe9fycMRv5Zf7Nhd5JZRg&s"
      },
      {
        "name": "Heath Ledger",
        "role": "Joker",
        "image": "https://m.media-amazon.com/images/M/MV5BMTI2NTY0NzA4MF5BMl5BanBnXkFtZTYwMjE1MDE0._V1_FMjpg_UX1000_.jpg"
      },
      {
        "name": "Aaron Eckhart",
        "role": "Harvey Dent",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1zh4ItThPaQSCKCyAQGfQ6K0C87BFxm__0w&s"
      },
      {
        "name": "Timothée Chalamet",
        "role": "Alfred",
        "image": "https://m.media-amazon.com/images/M/MV5BMjAwNzIwNTQ4Ml5BMl5BanBnXkFtZTYwMzE1MTUz._V1_FMjpg_UX1000_.jpg"
      },
      {
        "name": "Maggie Gyllenhaa",
        "role": "Rachel",
        "image": "https://m.media-amazon.com/images/M/MV5BMTM1MjY3NzA4NF5BMl5BanBnXkFtZTcwNzE4MjMyMw@@._V1_FMjpg_UX1000_.jpg"
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
  Movie(
    id: 4,
    title: "Inception",
    director: "Christopher Nolan",
    description: "     Dom Cobb is a thief with the rare ability to enter people's dreams and steal their secrets from their subconscious. When he is offered a chance to have his criminal history erased, he must perform the impossible: implant an idea into a target's mind. As he assembles a team for this high-stakes mission, the lines between reality and dreams begin to blur.",
    genre: ["Action", "Sci-Fi", "Thriller"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkq35zEZtIgZWAHKWdGD_IRMUx-c9EOgrcQ&s",
    releaseYear: "2010",
    rating: "8.8",
    trailerPoster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgw1PxgqpNphR0IPOeLyUZVxP5xTMOqDOw1w&s",
    trailerUrl: "https://youtu.be/YoHD9XEInc0",
    movieUrl: "https://www.imdb.com/title/tt1375666/",
    cast: [
      {
      "name": "Leonardo DiCaprio",
      "role": "Dom Cobb",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0xL6Nqijk3fdCeYhQau14TY9Oq1j5F_XIdA&s"
      },
      {
        "name": "Joseph Gordon-Levitt",
        "role": "Arthur",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvMhlVx07hbI3-zEQVHT2jjxEJxqabkOlLPw&s"
      },
      {
        "name": "Elliot Page",
        "role": "Ariadne",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoYdeWx_m3Z6hVK75NSAz0OwyHMNbVwH7QpA&s"
      },
      {
        "name": "Tom Hardy",
        "role": "Eames",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLb6Ms3mneGortbwm56GYO-o6BBgOMRCxkEQ&s"
      },
      {
        "name": "Marion Cotillard",
        "role": "Mal",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2QM6NqL0P7sEdJNoyuCaiNAwlVvuX87hrjw&s"
      }
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
  Movie(
    id: 5,
    title: "Dune",
    director: "Denis Villeneuve",
    description: "     In a distant future, noble families vie for control of the desert planet Arrakis, the only source of a valuable substance called spice. Young Paul Atreides must navigate treachery and danger as he discovers his destiny.",
    genre: ["Sci-Fi", "Adventure", "Drama"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHFdKTESKUIALnpjfFsZNCyUg2om0wplZ-8g&s",
    releaseYear: "2021",
    rating: "8.0",
    trailerPoster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREgxmpmCaXD1TfSigyq1q-xmw-4Va7c7NaHw&s",
    trailerUrl: "https://youtu.be/n9xhJrPXop4?si=XRcmZ87bShASlYOb",
    movieUrl: "https://www.imdb.com/title/tt1160419/?ref_=fn_al_tt_4",
    cast: [
      {
      "name": "Timothée Chalamet",
      "role": "Paul Atreides",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThlXA3IAUGvl2sDb6LnSlMLarUAhCOXcpBWMpoEK4MB_K8rTn90E5ggfaqaUVrJUTYxxA&usqp=CAU"
    },
    {
      "name": "Rebecca Ferguson",
      "role": "Lady Jessica",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdTd4E1TsP3cVVDBrLYfMfwfaEDnI7mFzL_w&s"
    },
    {
      "name": "Oscar Isaac",
      "role": "Duke Leto Atreides",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVSwcSIUrc_q4Pl3F6CQftLLxBtNwjk_gAKA&s"
    },
    {
      "name": "Josh Brolin",
      "role": "Gurney Halleck",
      "image": "https://m.media-amazon.com/images/M/MV5BMTQ1MzYyMjQ0Nl5BMl5BanBnXkFtZTcwMTA0ODkyMg@@._V1_FMjpg_UX1000_.jpg"
    },
    {
      "name": "Jason Momoa",
      "role": "Duncan Idaho",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Jason_Momoa_%2843055621224%29_%28cropped%29.jpg/640px-Jason_Momoa_%2843055621224%29_%28cropped%29.jpg"
    },
    {
      "name": "Zendaya",
      "role": "Chani",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Zendaya_-_2019_by_Glenn_Francis.jpg/640px-Zendaya_-_2019_by_Glenn_Francis.jpg"
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
  Movie(
    id: 6,
    title: "Spider-Man: No Way Home",
    director: "Jon Watts",
    description: "     When Peter Parker's secret identity is revealed, he seeks the help of Doctor Strange to make everyone forget that he is Spider-Man. However, when a spell goes wrong, villains from alternate realities begin to arrive, forcing Peter to confront the consequences of his actions.",
    genre: ["Action", "Adventure", "Fantasy"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlWqwmRiDNDFYw-4l3qFdT8TgpjRSTSF5X8A&s",
    releaseYear: "2021",
    rating: "8.2",
    trailerPoster: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1wWGwu4hlEFYNhwgOUVxl6qsenL2eTigFbg&s",
    trailerUrl: "https://youtu.be/JfVOs4VSpmA?si=MkpxNd_WqMR2P4mD",
    movieUrl: "https://www.imdb.com/title/tt10872600/?ref_=nv_sr_srsg_7_tt_7_nm_0_in_0_q_spider",
    cast: [
      {
      "name": "Tom Holland",
      "role": "Peter Parker / Spider-Man",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFqfXldhP-yELmPXZlQ02ZBfQ8sbyW8CqRfQ&s"
    },
    {
      "name": "Zendaya",
      "role": "MJ",
      "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Zendaya_-_2019_by_Glenn_Francis.jpg/640px-Zendaya_-_2019_by_Glenn_Francis.jpg"
    },
    {
      "name": "Benedict Cumberbatch",
      "role": "Doctor Strange",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcbCTns_TrthBx1w-YqqHtYvtg3qzzD9t8tw&s"
    },
    {
      "name": "Jacob Batalon",
      "role": "Ned Leeds",
      "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUn8gkShnZE65a0xY0w8V2yQ7XMA81ci1iYw&s"
    },
    {
      "name": "Alfred Molina",
      "role": "Doc Ock",
      "image": "https://m.media-amazon.com/images/M/MV5BMTEwNTgzNzgxNzNeQTJeQWpwZ15BbWU3MDQ5NzU1NjM@._V1_FMjpg_UX1000_.jpg"
    }
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
  Movie(
    id: 7,
    title: "Black Panther",
    director: "Ryan Coogler",
    description: "     T'Challa returns to the isolated, technologically advanced African nation of Wakanda to take his rightful place as king. However, he is challenged by an old foe, leading to a battle that will determine the fate of Wakanda and the world.",
    genre: ["Action", "Adventure", "Sci-Fi"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxkAp-UQJV3AeqakST2qqQGTyIRJs98CHLwQ&s",
    releaseYear: "2018",
    rating: "7.3",
    trailerPoster: "https://upload.wikimedia.org/wikipedia/en/9/9f/Black_Panther_OS_Vol_1_2.png",
    trailerUrl: "https://youtu.be/xjDjIWPwcPU?si=CgSi7YD-5TH69n6u",
    movieUrl: "https://www.imdb.com/title/tt1825683/?ref_=nv_sr_srsg_0_tt_7_nm_1_in_0_q_black%2520pant",
    cast: [
      {
        "name": "Chadwick Boseman",
        "role": "T'Challa / Black Panther",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjAf8uizR4n3z4ZomUVTV7LVetJXo2UdbFuA&s"
      },
      {
        "name": "Michael B. Jordan",
        "role": "Erik Killmonger",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUcq5H2-6UEfBDMTj-8rSg2kNXWflNsWw_Tg&s"
      },
      {
        "name": "Lupita Nyong'o",
        "role": "Nakia",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtygz8Eq74TpAsqcDR5jlIpRgd_zEBXH_AhA&s"
      },
      {
        "name": "Danai Gurira",
        "role": "Okoye",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLz3XWsoYwbD2V1XYtbuv9TCNcxeCCNDbJKA&s"
      },
      {
        "name": "Martin Freeman",
        "role": "Everett K. Ross",
        "image": "https://m.media-amazon.com/images/M/MV5BMjE0MjAwOTMzMF5BMl5BanBnXkFtZTcwMDg1MjEyNw@@._V1_QL75_UY207_CR1,0,140,207_.jpg"
      }
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
  Movie(
    id: 8,
    title: "Mad Max: Fury Road",
    director: "George Miller",
    description: "     In a post-apocalyptic wasteland, Max teams up with Furiosa to escape a tyrant and his army. Together, they embark on a treacherous journey across the desert in a battle for survival and freedom.",
    genre: ["Action", "Adventure", "Sci-Fi"],
    posterUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZMHutSyGUQQUzRUkN5qe8TOb3J0Nhzw2Smw&s",
    releaseYear: "2015",
    rating: "8.1",
    trailerPoster: "https://res.cloudinary.com/jerrick/image/upload/v1717748472/6662c2f83a03c7001d645ef6.jpg",
    trailerUrl: "https://youtu.be/hEJnMQG9ev8?si=YyKyiMC4y3o7MD3U",
    movieUrl: "https://www.imdb.com/title/tt1392190/?ref_=fn_al_tt_1",
    cast: [
      {
        "name": "Tom Hardy",
        "role": "Max Rockatansky",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLb6Ms3mneGortbwm56GYO-o6BBgOMRCxkEQ&s"
      },
      {
        "name": "Charlize Theron",
        "role": "Imperator Furiosa",
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Charlize-theron-IMG_6045.jpg/640px-Charlize-theron-IMG_6045.jpg"
      },
      {
        "name": "Nicholas Hoult",
        "role": "Nux",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAQC5Ruw7JuFpjAqt6-48kmJhm4kWP77-Qyw&s"
      },
      {
        "name": "Hugh Keays-Byrne",
        "role": "Immortan Joe",
        "image": "https://www.usatoday.com/gcdn/-mm-/b3afb270fdfccbfa9ff8156788649e91fc18bae5/c=0-113-1992-2769/local/-/media/2015/05/17/USATODAY/USATODAY/635674753658762734-GTY-472515634-72883568.JPG?width=660&height=880&fit=crop&format=pjpg&auto=webp"
      },
      {
        "name": "Rosie Huntington-Whiteley",
        "role": "Splendid Angharad",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQc1D5MifhEi1raQM5GnnRsq59_PQ6Qm4TNAQ&s"
      }
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
  Movie(
    id: 9,
    title: "1917",
    director: "Sam Mendes",
    description: "     Set during World War I, 1917 follows two young British soldiers, Lance Corporals Schofield and Blake, who are given a seemingly impossible mission. In a race against time, they must cross enemy lines to deliver a message that could save hundreds of lives, including Blake's own brother. The film is celebrated for its innovative cinematography, which creates the illusion of a continuous single shot, immersing the audience in the intense, harrowing journey of these soldiers.",
    genre: ["War", "Drama", "Action"],
    posterUrl: "https://m.media-amazon.com/images/S/pv-target-images/19e5290f1efbfa994701b3e2368b255df1748f7cc9c82db59dc5324427b452a9.jpg",
    releaseYear: "2014",
    rating: "8.4",
    trailerPoster: "https://i.ebayimg.com/images/g/gVcAAOSw~kFflHUk/s-l1200.jpg",
    trailerUrl: "https://youtu.be/YqNYrYUiMfg?si=55AWeP_g_PLvrj7C",
    movieUrl: "https://www.imdb.com/title/tt8579674/?ref_=fn_al_tt_1",
    cast: [
      {
        "name": "George MacKay",
        "role": "Lance Corporal Schofield",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV--JFb3NpAmwVYux0VPGhKVEcucPCjYB8Ew&s"
      },
      {
        "name": "Dean-Charles Chapman",
        "role": "Lance Corporal Blake",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyrWV6HkhRp3y-JCNERqvfWXt7D5Ruf-rrmQ&s"
      },
      {
        "name": "Colin Firth",
        "role": "General Erinmore",
        "image": "https://m.media-amazon.com/images/M/MV5BMTUxMDMwMTI4MF5BMl5BanBnXkFtZTcwMzE2MzQxMw@@._V1_FMjpg_UX1000_.jpg"
      },
      {
        "name": "Benedict Cumberbatch",
        "role": "Colonel Mackenzie",
        "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcbCTns_TrthBx1w-YqqHtYvtg3qzzD9t8tw&s"
      },
      {
        "name": "Mark Strong",
        "role": "Captain Smith",
        "image": "https://m.media-amazon.com/images/M/MV5BNWVlOWU4MmItZmYwMS00MmNlLWJjNjYtYzAzMGZhYmY1MzAyXkEyXkFqcGc@._V1_.jpg"
      }
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
];
