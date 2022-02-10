import 'package:favorit_list/screens/favorite_page.dart';
import 'package:favorit_list/screens/list_page.dart';
import 'package:favorit_list/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeWidget());
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0XFF9589E6),
          secondary: Color(0XFFD5D2EA),
        ),
      ),
      routes: {
        Routes.Home: (context) => const ListPage(),
        Routes.Favorite_Page: (context) => const FavoritePage(),
      },
    );
  }
}
