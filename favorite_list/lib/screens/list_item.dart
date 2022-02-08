import 'package:favorit_list/models/clothes.dart';
import 'package:flutter/material.dart';

//Lista de itens apenas

class ListItem extends StatelessWidget {
  final Clothes clothes;

  const ListItem({
    Key? key,
    required this.clothes, //No construtor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        clothes.imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.deepPurple[50],
        title: Text(clothes.title),
      ),
    );
  }
}
