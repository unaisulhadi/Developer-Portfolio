import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: Drawer(
        child: SafeArea(
            child: Column(
          children: [MyBio()],
        )),
      ),
    );
  }
}

class MyBio extends StatelessWidget {
  const MyBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xFF242430),
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/IMG_5505.jpg"),
            ),
            const Spacer(),
            Text(
              "Unaisul Hadi",
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 24),
            ),
            Text(
              "Android Developer",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w200, height: 1.5, color: Colors.grey),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
