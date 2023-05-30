class SongCategory {
  final int id;
  final String category;
  final String categoryImage;
  SongCategory(this.id, this.category, this.categoryImage);
  static List<SongCategory> songCategories = [
    SongCategory(1, "Mix Song", "assets/images/newsong.png"),
    SongCategory(2, "Trending Song", "assets/images/music1.jpeg"),
    SongCategory(3, "All Song", "assets/images/songs.jpeg"),
  ];
}
