import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

final List<String> _listClothes = [
  'favorite_list/assets/images/pic1.jpg',
  'favorite_list/assets/images/pic2.jpg',
  'favorite_list/assets/images/pic3.jpg',
  'favorite_list/assets/images/pic4.jpg',
  'favorite_list/assets/images/pic5.jpg',
  'favorite_list/assets/images/pic6.jpg',
  'favorite_list/assets/images/pic7.jpg',
  'favorite_list/assets/images/pic8.jpg',
];

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'New Arrivals',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Expanded(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: const [
                    /* _listClothes.map((item) => Card()), */
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
