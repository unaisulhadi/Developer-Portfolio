import 'package:flutter/material.dart';
import 'package:github_portfolio/screens/home/main_content.dart';

import 'side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //drawer: SideMenu(),
      body: Row(
        children: const [SideMenu(), MainContent()],
      ),
    );
  }
}
