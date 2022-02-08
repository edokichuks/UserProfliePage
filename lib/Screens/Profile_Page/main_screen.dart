import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:userprofliepage/Screens/Profile_Page/build_appBar.dart';
import 'package:userprofliepage/Screens/Profile_Page/main_screen2.dart';
import 'package:userprofliepage/Screens/Profile_Page/user_file.dart';
import 'package:userprofliepage/Screens/Profile_Page/user_preferences.dart';

import 'ButtonWidget.dart';
import 'NumbersWidget1.dart';
import 'ProfileWidget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPrefernces.myUser;
    return ThemeSwitchingArea(
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              ProfileWidget(
                isEdit: false,
                imagePath: user.imagePath,
                onClicked: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MainScreen2()),
                  );
                },
              ),
              SizedBox(height: 24),
              buildName(user),
              SizedBox(height: 24),
              Center(
                child: bulidUpgradeButton(),
              ),
              SizedBox(height: 24),
              NumbersWidget1(),
              SizedBox(height: 48),
              buildAbout(user),
            ],
          ),
        );
      }),
    );
  }

  buildName(User user) {
    return Column(
      children: [
        Text(
          user.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        Text(
          user.email,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  bulidUpgradeButton() {
    return ButtonWidget(
      text: 'Upgrade To PRO',
      onClicked: () {},
    );
  }

  buildAbout(User user) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 48,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            user.about,
            style: TextStyle(
              fontSize: 16,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
