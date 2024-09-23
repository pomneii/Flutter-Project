class MovieModel {
  String? movieTitle;
  int? movieReleaseYear;
  String? moviePosterURL;
  double? movieRating;

  // final List<Map>? cast;
  // final List<Map>? comment;

  MovieModel({
    this.movieTitle,
    this.movieReleaseYear,
    this.moviePosterURL,
    this.movieRating,
    // this.comment,
    // this.cast
  });
}

// Data
final posterImage = [
    MovieModel(
        movieTitle: "Interstellar",
        movieReleaseYear: 2014,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s",
        movieRating: 8.7),
    MovieModel(
        movieTitle: "Inception",
        movieReleaseYear: 2010,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkq35zEZtIgZWAHKWdGD_IRMUx-c9EOgrcQ&s",
        movieRating: 8.8),
    MovieModel(
        movieTitle: "The Matrix",
        movieReleaseYear: 1999,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSjSWOCaw5dnDL2GT1zFd9RMCgUGw5Q2Cfg&s",
        movieRating: 8.7),
    MovieModel(
        movieTitle: "Fight Club",
        movieReleaseYear: 1999,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZPGAZtd0UeDLMpcACoX6lPFBXeScJnvO7yQ&s",
        movieRating: 8.8),
    MovieModel(
        movieTitle: "The Dark Knight",
        movieReleaseYear: 2008,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhi1arS70w_kXQTF-GctH3Vz_vXSLK3ZxHVQ&s",
        movieRating: 9.0),
    MovieModel(
        movieTitle: "Interstellar",
        movieReleaseYear: 2014,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0zt0lp-O3XdL8zzdrEvyzmcl6kOwfgbv4xQ&s",
        movieRating: 8.7),
    MovieModel(
        movieTitle: "Inception",
        movieReleaseYear: 2010,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkq35zEZtIgZWAHKWdGD_IRMUx-c9EOgrcQ&s",
        movieRating: 8.8),
    MovieModel(
        movieTitle: "The Matrix",
        movieReleaseYear: 1999,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfSjSWOCaw5dnDL2GT1zFd9RMCgUGw5Q2Cfg&s",
        movieRating: 8.7),
    MovieModel(
        movieTitle: "Fight Club",
        movieReleaseYear: 1999,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZPGAZtd0UeDLMpcACoX6lPFBXeScJnvO7yQ&s",
        movieRating: 8.8),
    MovieModel(
        movieTitle: "The Dark Knight",
        movieReleaseYear: 2008,
        moviePosterURL: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhi1arS70w_kXQTF-GctH3Vz_vXSLK3ZxHVQ&s",
        movieRating: 9.0),
];
