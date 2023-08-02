import 'package:flutter/material.dart';

class videoCard extends StatefulWidget {
  String image, user, title, views;
  videoCard({required this.image,required this.title,required this.user,required this.views});

  @override
  State<videoCard> createState() => _videoCardState();
}

class _videoCardState extends State<videoCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Image.asset(
            widget.image,
            width: size.width,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    widget.user,
                    scale: 1.4,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        
                        style:const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                      Text(
                        widget.views,
                        style:const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.more_vert)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
