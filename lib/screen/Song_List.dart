import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermusic/model/song_category.dart';
import 'package:fluttermusic/model/song_model.dart';

class SongList extends StatefulWidget {
  const SongList({super.key, required this.category});
  final SongCategory category;

  @override
  State<SongList> createState() => _SongListState();
}

class _SongListState extends State<SongList> {
  final player = AudioPlayer();
  bool isPlaying = false;
  bool isRepeat = false;
  bool ispaused = false;
  bool stop = true;

  @override
  void initState() {
    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                CupertinoIcons.back,
                color: Colors.white,
                size: 30,
              )),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            const Center(
              child: Text(
                "Play Songs",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Image.asset(
              widget.category.categoryImage,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Song.songs
                    .where((song) => song.categoryId == widget.category.id)
                    .length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        if (isPlaying) {
                          setState(() async {
                            isPlaying = false;
                            await player.pause();
                          });
                        } else {
                          setState(() async {
                            ispaused = true;
                            await player
                                .play(AssetSource(Song.songs[index].songUrl));
                          });
                        }
                      },
                      child: ListTile(
                          leading: Image.asset(
                            Song.songs[index].imageUrl,
                          ),
                          tileColor: Colors.white10,
                          title: Text(
                            Song.songs[index].title,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )),
                    ),
                  );
                })
          ]),
        ));
  }
}
