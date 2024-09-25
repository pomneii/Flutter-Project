class MovieModel {
  String? movieTitle;
  String? movieReleaseYear;
  String? moviePosterURL;
  String? movieRating;

  final List<Map>? cast;
  final List<Map>? comment;

  MovieModel({
    this.movieTitle,
    this.movieReleaseYear,
    this.moviePosterURL,
    this.movieRating,
    this.comment,
    this.cast
  });
}

// Data
final posterImage = [
    MovieModel(
        movieTitle: "Interstellar",
        movieReleaseYear: "2014",
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s",
        movieRating: "8.7",
        cast: [
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg0MDc3ODUwOV5BMl5BanBnXkFtZTcwMTk2NjY4Nw@@._V1_FMjpg_UX1000_.jpg"
          },
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s"
          },
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s"
          },
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s"
          },
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s"
          },
          {
            "name": "kiki",
            "role": "kuku",
            "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s"
          }
        ],
        comment: [
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "kiki",
            "date": "Nov 11, 2023",
            "comment": "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel accusamus facilis magnam officia eos exercitationem sint aliquid culpa eaque, ratione reiciendis numquam veritatis, labore aperiam nostrum ipsa quisquam cupiditate! Nam."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "kiki",
            "date": "Nov 11, 2023",
            "comment": "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel accusamus facilis magnam officia eos exercitationem sint aliquid culpa eaque, ratione reiciendis numquam veritatis, labore aperiam nostrum ipsa quisquam cupiditate! Nam."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "kiki",
            "date": "Nov 11, 2023",
            "comment": "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel accusamus facilis magnam officia eos exercitationem sint aliquid culpa eaque, ratione reiciendis numquam veritatis, labore aperiam nostrum ipsa quisquam cupiditate! Nam."
          },
          {
            "imageUrl": "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/b9914517-cfc7-4d3c-ac9d-0e8eb932ed49/df5u3ms-5b5713df-88fe-4b3c-b0d9-2bb8a921fa7e.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2I5OTE0NTE3LWNmYzctNGQzYy1hYzlkLTBlOGViOTMyZWQ0OVwvZGY1dTNtcy01YjU3MTNkZi04OGZlLTRiM2MtYjBkOS0yYmI4YTkyMWZhN2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.LW27If1L6mBebhIfsQwJi05_ZhcLBE-zJklC592tVaI",
            "name": "kiki",
            "date": "Nov 11, 2023",
            "comment": "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Vel accusamus facilis magnam officia eos exercitationem sint aliquid culpa eaque, ratione reiciendis numquam veritatis, labore aperiam nostrum ipsa quisquam cupiditate! Nam."
          },
        ]
        ),
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
