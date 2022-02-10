import 'package:favorit_list/models/clothes.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Clothes clothes;
  const ListItem(this.clothes);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Column(
        children: [],
      ),
    );
  }
}
