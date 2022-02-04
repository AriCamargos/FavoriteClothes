import 'package:favorit_list/screens/list_page.dart';
import 'package:flutter/material.dart';
import './utils/app_routes.dart';

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
          secondary: Color(0XFFD5D2EA)
        ),
      ),
       routes:  {
        AppRoutes.list_page: (context) => const ListPage(),

      } 
    );
  }
}
