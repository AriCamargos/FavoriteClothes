import 'package:favorit_list/models/clothes.dart';
import 'package:flutter/material.dart';
import '../data/dummy_data.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<Clothes> clothesProducts = DUMMY_CLOTHES;

    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.white,
        title: const Text('Store'),
      ),
      body: GridView.builder(
        itemCount: clothesProducts.length,
        itemBuilder: (BuildContext context, index) {
          return ListItem(clothes: clothesProducts[index]);
        },
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
        ),
      ),
    );
  }
}
