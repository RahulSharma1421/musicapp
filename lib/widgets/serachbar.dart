import 'package:flutter/material.dart';

class Searchbarwidget extends StatelessWidget {
  const Searchbarwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: const Row(
            children: [
              Icon(
                Icons.search,
                size: 30,
                color: Colors.black,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Search",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
