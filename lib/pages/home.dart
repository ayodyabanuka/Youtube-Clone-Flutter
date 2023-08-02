import 'package:flutter/material.dart';
import 'package:youtube_clone/Components/filterBar.dart';
import 'package:youtube_clone/Components/videoCard.dart';
import 'package:youtube_clone/Models/VideoCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

final List<VideoCard> Videos = [
  VideoCard(
      "assets/thumb1.png",
      "The Beauty of Existence - Heart Touching \nNasheed",
      "assets/account1.png",
      "19,210,251 views Aug • 1, 2023"),
  VideoCard(
      "assets/thumb2.png",
      "The Beauty of Existence - Heart Touching \nNasheed",
      "assets/account2.png",
      "20,000,251 views Jul • 31, 2023"),
  VideoCard(
      "assets/thumb3.png",
      "The Beauty of Existence - Heart Touching \nNasheed",
      "assets/account3.png",
      "20,000,251 views Jul • 31, 2023"),
  VideoCard(
      "assets/thumb4.png",
      "The Beauty of Existence - Heart Touching \nNasheed",
      "assets/account4.png",
      "20,000,251 views Jul • 31, 2023"),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 243, 243, 243)),
      child: Column(
        children: [
          const FilterBar(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 8,
                );
              },
              itemCount: Videos.length,
              itemBuilder: (context, index) {
                return videoCard(
                    image: Videos[index].image,
                    title: Videos[index].title,
                    user: Videos[index].user,
                    views: Videos[index].views);
              },
            ),
          )
        ],
      ),
    );
  }
}
