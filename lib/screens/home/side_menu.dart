import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_portfolio/components/animated_progress_indicator.dart';
import 'package:github_portfolio/constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Drawer(
        child: SafeArea(
            child: Column(
          children: [
            const MyBio(),
            SingleChildScrollView(
              child: Column(
                children: const [
                  ProfessionalSkills(),
                  SocialButtons(),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  DownloadResume()
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}

class DownloadResume extends StatelessWidget {
  const DownloadResume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("DOWNLOAD RESUME",
              style: Theme.of(context).textTheme.subtitle2!),
          const SizedBox(
            width: mediumPadding,
          ),
          SvgPicture.asset("assets/icons/download.svg")
        ],
      ),
    );
  }
}

class SocialItem extends StatelessWidget {
  const SocialItem({required this.imageUrl, required this.name});
  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 36, height: 36, child: Image.asset(imageUrl)),
          const SizedBox(
            height: 8,
          ),
          Text(
            name,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: textColor2, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: mediumPadding,
          ),
          Text(
            "Connect with Me",
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: textColor1, fontSize: 16),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SocialItem(
                imageUrl: 'assets/icons/github.png',
                name: 'GitHub',
              ),
              SocialItem(
                imageUrl: 'assets/icons/linkedin.png',
                name: 'LinkedIn',
              ),
              SocialItem(
                imageUrl: 'assets/icons/stack-overflow.png',
                name: 'StackOverflow',
              ),
              SocialItem(
                imageUrl: 'assets/icons/playstore.png',
                name: 'Play Store',
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ProfessionalSkills extends StatelessWidget {
  const ProfessionalSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
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
        color: secondaryColor,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage("assets/images/IMG_5505.jpg"),
            ),
            const Spacer(),
            Text(
              "UNAISUL HADI",
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 24),
            ),
            Text(
              "Android Developer",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.w400, height: 1.5, color: Colors.grey),
            ),
            Text(
              "Kerala, India",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  color: Colors.grey),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
