import 'package:flutter/material.dart';
import 'package:fluttermusic/model/song_category.dart';
import 'package:fluttermusic/screen/Song_List.dart';
import 'package:fluttermusic/widgets/serachbar.dart';

class SongFile extends StatefulWidget {
  const SongFile({super.key});

  @override
  State<SongFile> createState() => _SongFileState();
}

class _SongFileState extends State<SongFile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Searchbarwidget(),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/images/banner.jpg'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Songs Files",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.all(8.0),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: SongCategory.songCategories.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SongList(
                                        category:
                                            SongCategory.songCategories[index],
                                      )));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              SongCategory.songCategories[index].categoryImage,
                            ),
                            Text(
                              SongCategory.songCategories[index].category,
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          )),
    );
  }
}
