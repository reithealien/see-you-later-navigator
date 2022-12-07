class Movie {
  Movie({
    required this.id,
    required this.title,
    required this.director,
    required this.releaseDate,
    required this.posterUrl,
    this.openingCrawl,
  });

  final int id;
  final String title;
  final String? openingCrawl;
  final String director;
  final DateTime releaseDate;
  final String posterUrl;
}
