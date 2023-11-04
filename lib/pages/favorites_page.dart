import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(21, 0, 21, 0),
            height: height * 0.061,
            child: TextField(
              textAlign: TextAlign.center,
              controller: searchController,
              decoration: InputDecoration(
                  hintText: 'içerik ismini arayınız',
                  suffixIconColor: Colors.black,
                  suffixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(padding: EdgeInsets.all(height * 0.018)),
          Container(
            margin: const EdgeInsets.fromLTRB(21, 0, 21, 0),
            height: height * 0.70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black38),
            ),
          )
        ],
      ),
    );
  }
}
