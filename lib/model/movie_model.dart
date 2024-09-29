
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
    posterUrl: "1/poster.jpg",
    releaseYear: "2010",
    rating: "8.7",
    trailerUrl: "https://www.youtube.com/watch?v=2LqzF5WauAw",
    movieUrl: "https://www.imdb.com/title/tt0816692/?ref_=tt_mv_close",
    trailerPoster: "1/trailer.jpg",
    cast: [
      {
        "name": "Matthew McConaughey",
        "role": "Cooper",
        "image": "1/casts/1.jpg"
      },
      {
        "name": "Anne Hathaway",
        "role": "Brand",
        "image": "1/casts/2.jpg"
      },
      {
        "name": "Jessica Chastain",
        "role": "Murph",
        "image": "1/casts/3.jpg"
      },
      {
        "name": "Timothée Chalamet",
        "role": "Tom",
        "image": "1/casts/4.jpg",
      },
      {
        "name": "John Lithgow",
        "role": "Donald",
        "image": "1/casts/5.jpg"
      },
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "2/poster.jpg",
    releaseYear: "1999",
    rating: "8.7",
    trailerPoster: "2/trailer.jpg",
    trailerUrl: "https://youtu.be/vKQi3bBA1y8?si=mn8ViYU74j-DQ3OE",
    movieUrl: "https://www.imdb.com/title/tt0133093/?ref_=tt_mv_close",
    cast: [
      {
        "name": "Keanu Reeves",
        "role": "Neo",
        "image": "2/casts/1.jpg"
      },
      {
        "name": "Laurence Fishburne",
        "role": "	Morpheus",
        "image": "2/casts/2.jpg"
      },
      {
        "name": "Carrie-Anne Moss",
        "role": "Trinity",
        "image": "2/casts/3.jpg"
      },
      {
        "name": "Hugo Weaving",
        "role": "Agent Smith",
        "image": "2/casts/4.jpg"
      },
      {
        "name": "Gloria Foster",
        "role": "Oracle",
        "image": "2/casts/5.jpg"
      },
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "3/poster.jpg",
    releaseYear: "2008",
    rating: "9.0",
    trailerPoster: "3/trailer.jpg",
    trailerUrl: "https://youtu.be/EXeTwQWrcwY?si=2zN5SQRci22ljG3v",
    movieUrl: "https://www.imdb.com/title/tt0468569/?ref_=nv_sr_srsg_0_tt_7_nm_1_in_0_q_the%2520dar",
    cast: [
      {
        "name": "Christian Bale",
        "role": "Bruce Wayne / Batman",
        "image": "3/casts/1.jpg"
      },
      {
        "name": "Heath Ledger",
        "role": "Joker",
        "image": "3/casts/2.jpg"
      },
      {
        "name": "Aaron Eckhart",
        "role": "Harvey Dent",
        "image": "3/casts/3.jpg"
      },
      {
        "name": "Michael Caine",
        "role": "Alfred Pennyworth",
        "image": "3/casts/4.jpg"
      },
      {
        "name": "Maggie Gyllenhaa",
        "role": "Rachel",
        "image": "3/casts/5.jpg"
      },
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "4/poster.jpg",
    releaseYear: "2010",
    rating: "8.8",
    trailerPoster: "4/trailer.jpg",
    trailerUrl: "https://youtu.be/YoHD9XEInc0",
    movieUrl: "https://www.imdb.com/title/tt1375666/",
    cast: [
      {
      "name": "Leonardo DiCaprio",
      "role": "Dom Cobb",
      "image": "4/casts/1.jpg"
      },
      {
        "name": "Joseph Gordon-Levitt",
        "role": "Arthur",
        "image": "4/casts/2.jpg"
      },
      {
        "name": "Elliot Page",
        "role": "Ariadne",
        "image": "4/casts/3.jpg"
      },
      {
        "name": "Tom Hardy",
        "role": "Eames",
        "image": "4/casts/4.jpg"
      },
      {
        "name": "Marion Cotillard",
        "role": "Mal",
        "image": "4/casts/5.jpg"
      }
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "5/poster.jpg",
    releaseYear: "2021",
    rating: "8.0",
    trailerPoster: "5/trailer.jpg",
    trailerUrl: "https://youtu.be/n9xhJrPXop4?si=XRcmZ87bShASlYOb",
    movieUrl: "https://www.imdb.com/title/tt1160419/?ref_=fn_al_tt_4",
    cast: [
      {
      "name": "Timothée Chalamet",
      "role": "Paul Atreides",
      "image": "5/casts/1.jpg"
    },
    {
      "name": "Rebecca Ferguson",
      "role": "Lady Jessica",
      "image": "5/casts/2.jpg"
    },
    {
      "name": "Oscar Isaac",
      "role": "Duke Leto Atreides",
      "image": "5/casts/3.jpg"
    },
    {
      "name": "Josh Brolin",
      "role": "Gurney Halleck",
      "image": "5/casts/4.jpg"
    },
    {
      "name": "Jason Momoa",
      "role": "Duncan Idaho",
      "image": "5/casts/5.jpg"
    },
    {
      "name": "Zendaya",
      "role": "Chani",
      "image": "5/casts/6.jpg"
    },
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "6/poster.jpg",
    releaseYear: "2021",
    rating: "8.2",
    trailerPoster: "6/trailer.jpeg",
    trailerUrl: "https://youtu.be/JfVOs4VSpmA?si=MkpxNd_WqMR2P4mD",
    movieUrl: "https://www.imdb.com/title/tt10872600/?ref_=nv_sr_srsg_7_tt_7_nm_0_in_0_q_spider",
    cast: [
      {
      "name": "Tom Holland",
      "role": "Peter Parker / Spider-Man",
      "image": "6/casts/1.jpg"
    },
    {
      "name": "Zendaya",
      "role": "MJ",
      "image": "6/casts/2.jpg"
    },
    {
      "name": "Benedict Cumberbatch",
      "role": "Doctor Strange",
      "image": "6/casts/3.jpg"
    },
    {
      "name": "Jacob Batalon",
      "role": "Ned Leeds",
      "image": "6/casts/4.jpg"
    },
    {
      "name": "Alfred Molina",
      "role": "Doc Ock",
      "image": "6/casts/5.jpg"
    }
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "7/poster.jpg",
    releaseYear: "2018",
    rating: "7.3",
    trailerPoster: "7/trailer.jpg",
    trailerUrl: "https://youtu.be/xjDjIWPwcPU?si=CgSi7YD-5TH69n6u",
    movieUrl: "https://www.imdb.com/title/tt1825683/?ref_=nv_sr_srsg_0_tt_7_nm_1_in_0_q_black%2520pant",
    cast: [
      {
        "name": "Chadwick Boseman",
        "role": "T'Challa / Black Panther",
        "image": "7/casts/1.jpg"
      },
      {
        "name": "Michael B. Jordan",
        "role": "Erik Killmonger",
        "image": "7/casts/2.jpg"
      },
      {
        "name": "Lupita Nyong'o",
        "role": "Nakia",
        "image": "7/casts/3.jpg"
      },
      {
        "name": "Danai Gurira",
        "role": "Okoye",
        "image": "7/casts/4.jpg"
      },
      {
        "name": "Martin Freeman",
        "role": "Everett K. Ross",
        "image": "7/casts/5.jpg"
      }
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "8/poster.jpg",
    releaseYear: "2015",
    rating: "8.1",
    trailerPoster: "8/trailer.jpg",
    trailerUrl: "https://youtu.be/hEJnMQG9ev8?si=YyKyiMC4y3o7MD3U",
    movieUrl: "https://www.imdb.com/title/tt1392190/?ref_=fn_al_tt_1",
    cast: [
      {
        "name": "Tom Hardy",
        "role": "Max Rockatansky",
        "image": "8/casts/1.jpg"
      },
      {
        "name": "Charlize Theron",
        "role": "Imperator Furiosa",
        "image": "8/casts/2.jpg"
      },
      {
        "name": "Nicholas Hoult",
        "role": "Nux",
        "image": "8/casts/3.jpg"
      },
      {
        "name": "Hugh Keays-Byrne",
        "role": "Immortan Joe",
        "image": "8/casts/4.jpg"
      },
      {
        "name": "Rosie Huntington-Whiteley",
        "role": "Splendid Angharad",
        "image": "8/casts/5.jpg"
      }
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
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
    posterUrl: "9/poster.jpg",
    releaseYear: "2014",
    rating: "8.4",
    trailerPoster: "9/trailer.jpg",
    trailerUrl: "https://youtu.be/YqNYrYUiMfg?si=55AWeP_g_PLvrj7C",
    movieUrl: "https://www.imdb.com/title/tt8579674/?ref_=fn_al_tt_1",
    cast: [
      {
        "name": "George MacKay",
        "role": "Lance Corporal Schofield",
        "image": "9/casts/1.jpg"
      },
      {
        "name": "Dean-Charles Chapman",
        "role": "Lance Corporal Blake",
        "image": "9/casts/2.jpg"
      },
      {
        "name": "Colin Firth",
        "role": "General Erinmore",
        "image": "9/casts/3.jpg"
      },
      {
        "name": "Benedict Cumberbatch",
        "role": "Colonel Mackenzie",
        "image": "9/casts/4.jpg"
      },
      {
        "name": "Mark Strong",
        "role": "Captain Smith",
        "image": "9/casts/5.jpg"
      }
    ],
    comment: [
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Sophia Reynolds",
        "date": "June 12, 2013",
        "comment": "The way the director seamlessly blended the past and present timelines in this film was truly masterful."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Liam Carter",
        "date": "January 6, 2007",
        "comment": "I was completely captivated by the intricate plot and the unexpected twists that kept me guessing until the very end."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Olivia Bennett",
        "date": "March 16, 2008",
        "comment": "The performances were so authentic and believable that I felt like I was right there with the characters, experiencing their emotions firsthand."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Noah Mitchell",
        "date": "July 21, 2005",
        "comment": "The cinematography was breathtaking, capturing the beauty of the setting and adding depth to the story."
      },
      {
        "imageUrl": "profile/img_profile.jpg",
        "name": "Ava Harrison",
        "date": "December 12, 2007",
        "comment": "This movie has stayed with me long after I watched it, and I'll definitely be recommending it to everyone I know."
      },
    ]
  ),
];
