class Song {
  final String songUrl;
  final String title;
  final String imageUrl;
  final int categoryId;
  Song(this.songUrl, this.title, this.imageUrl, this.categoryId);
  static List<Song> songs = [
    Song("audio/shambhu.mp3", "Har Har Shambhu..", "assets/images/newsong.png",
        1),
    Song("audio/hola.mp3", "Holla Hello..", "assets/images/music1.jpeg", 2),
    Song("audio/kyaloga.mp3", "Kya Loga..", "assets/images/songs.jpeg", 3),
    Song("audio/ram.mp3", "Ram Siya Ram..", "assets/images/music1.jpeg", 3),
    Song("audio/shivdhun.mp3", "Shiv Dhun..", "assets/images/songs.jpeg", 2),
    Song("audio/dogalan.mp3", "Do Gallan..", "assets/images/newsong.png", 1),
    Song("audio/goodluck.mp3", "Good Luck..", "assets/images/songs.jpeg", 2),
    Song("audio/kyaloga.mp3", "Kya Loga..", "assets/images/songs.jpeg", 1),
    Song("audio/dilgalti.mp3", "Dil Galti..", "assets/images/songs.jpeg", 1),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 1),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/newsong.png", 2),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 2),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/newsong.png", 3),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/newsong.png", 3),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 3),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 1),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 2),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 3),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/songs.jpeg", 1),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/music1.jpeg", 2),
    Song("audio/manjan.mp3", "Man Meri Jann..", "assets/images/music1.jpeg", 3),
  ];
}
