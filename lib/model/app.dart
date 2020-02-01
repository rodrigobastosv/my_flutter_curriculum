class App {
  App(
      {this.id,
      this.logo,
      this.name,
      this.description,
      this.playstoreUrl,
      this.stuffUsed,
      this.releaseDate,
      this.images});

  final String id;
  final String logo;
  final String name;
  final String description;
  final String releaseDate;
  final String playstoreUrl;
  final List<String> stuffUsed;
  final List<String> images;
}
