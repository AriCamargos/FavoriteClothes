import 'package:flutter/material.dart';
import '../models/category.dart';
import '../data/dummy_data.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryClothes = DUMMY_CATEGORIES.where((clothes) {
      return clothes.categories.contains(category.id);
    }).toList();

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
        title: Text(category.id),
      ),
      body: SizedBox(
        height: 10,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 100.0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 7,
                    mainAxisSpacing: 7,
                  ),
                  itemCount: categoryClothes.length,
                  itemBuilder: (BuildContext context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
