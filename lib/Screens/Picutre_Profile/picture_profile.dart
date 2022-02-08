import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PictureProfile extends StatefulWidget {
  @override
  State<PictureProfile> createState() => _PictureProfileState();
}

class _PictureProfileState extends State<PictureProfile> {
  final double coverHeight = 210;
  final int profileHeight = 144;
  final double top = 128;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        buildTop(),
        bulidContent(),
      ],
    ));
  }

  Widget buildTop() {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 72),
          child: bulidCoverImage(),
        ),
        Positioned(top: top, child: bulidProfileImage()),
      ],
    );
  }

  Widget bulidCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          'image/untitled.bmp',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget bulidProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage('image/transformers_5_800.jpg'),
      );

  bulidContent() => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 48,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              'EDOKI CHUKS',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Flutter Software Engineer',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buildSocialIcon(FontAwesomeIcons.slack),
                SizedBox(
                  width: 12,
                ),
                buildSocialIcon(FontAwesomeIcons.github),
                SizedBox(
                  width: 12,
                ),
                buildSocialIcon(FontAwesomeIcons.twitter),
                SizedBox(
                  width: 12,
                ),
                buildSocialIcon(FontAwesomeIcons.linkedin),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            NumbersWidget(),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            buildAbout(),
          ],
        ),
      );
  Widget buildSocialIcon(IconData icon) => CircleAvatar(
        radius: 25,
        child: Material(
          shape: CircleBorder(),
          clipBehavior: Clip.hardEdge,
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Icon(
                icon,
                size: 32,
              ),
            ),
          ),
        ),
      );

  buildAbout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'About',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Flutter Software Engineer and Google Developer Expert for Flutter & Dart with years of experience as a consultant for multiple companies in Europe, USA, and Asia.                                                   My mission is to create a better world with beautiful Flutter app designs and software!',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 18,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildButton(text: 'Projects', value: 39),
        buildDivider(),
        buildButton(text: 'Following', value: 529),
        buildDivider(),
        buildButton(text: 'Followers', value: 5834),
      ],
    );
  }

  Widget buildDivider() => Container(
        height: 20,
        child: VerticalDivider(),
      );
  Widget buildButton({
    required String text,
    required int value,
  }) =>
      MaterialButton(
        padding: EdgeInsets.symmetric(
          vertical: 4,
        ),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '$value',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      );
}
