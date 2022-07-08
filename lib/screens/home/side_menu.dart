import 'package:flutter/material.dart';
import 'package:github_portfolio/components/animated_progress_indicator.dart';
import 'package:github_portfolio/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      child: Drawer(
        child: SafeArea(
            child: Column(
          children: [
            const MyBio(),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [ProfessionalSkills(), PersonalSkills()],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}

class PersonalSkills extends StatelessWidget {
  const PersonalSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "Personal Skills",
        style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: textColor1, fontSize: 16),
      ),
      const SizedBox(
        height: mediumPadding,
      ),
      SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dedicated",
              style: Theme.of(context).textTheme.subtitle2!,
            ),
            const SizedBox(
              height: mediumPadding,
            ),
            Text(
              "Enthusiast",
              style: Theme.of(context).textTheme.subtitle2!,
            ),
            const SizedBox(
              height: mediumPadding,
            ),
            Text(
              "Self Learner",
              style: Theme.of(context).textTheme.subtitle2!,
            ),
            const SizedBox(
              height: mediumPadding,
            ),
            Text(
              "Hard Working",
              style: Theme.of(context).textTheme.subtitle2!,
            ),
          ],
        ),
      ),
    ]);
  }
}

class ProfessionalSkills extends StatelessWidget {
  const ProfessionalSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Professional Skills",
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(color: textColor1, fontSize: 16),
        ),
        const SizedBox(
          height: mediumPadding,
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Java",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.68,
          label: "Kotlin",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Android SDK",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Git",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.72,
          label: "Jetpack",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.55,
          label: "Compose",
        ),
      ],
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
