import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

final List<String> _listClothes = [
  'assets/images/clock1.jpg',
  'assets/images/clock2.jpg',
  'assets/images/clock3.jpg',
  'assets/images/clock4.jpg',
  'assets/images/clock5.jpg',
  'assets/images/clock6.jpg',
  'assets/images/clock7.jpg',
  'assets/images/clock8.jpg',
  'assets/images/clock9.jpg',
  'assets/images/clock10.jpg',
  'assets/images/clock11.jpg',
  'assets/images/clock12.jpg',
];

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Store',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 7,
          ),
          itemCount: _listClothes.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  _listClothes[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
