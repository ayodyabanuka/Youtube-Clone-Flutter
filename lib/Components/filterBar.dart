import "package:flutter/material.dart";

class FilterBar extends StatefulWidget {
  const FilterBar({super.key});

  @override
  State<FilterBar> createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 230, 230, 230),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.compass_calibration_rounded,
                      size: 15,
                    ),
                    Text(
                      "Explore",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 12, 12, 12),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                child: Text(
                  "All",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                child: Text(
                  "Mixes",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                child: Text(
                  "Music",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFFECECEC),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 14),
                child: Text(
                  "Graphics",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
