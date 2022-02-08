import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:userprofliepage/Screens/Profile_Page/ProfileWidget.dart';
import 'package:userprofliepage/Screens/Profile_Page/build_appBar.dart';

import 'TextFieldWidget.dart';
import 'user_file.dart';
import 'user_preferences.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  _MainScreen2State createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  User user = UserPrefernces.myUser;
  @override
  Widget build(BuildContext context) {
    return ThemeSwitchingArea(
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
            ),
            physics: BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () async {},
                isEdit: true,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                maxLines: 1,
                label: 'Full Name',
                text: user.name,
                onChanged: (name) {},
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                maxLines: 1,
                label: 'Email',
                text: user.email,
                onChanged: (email) {},
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldWidget(
                label: 'About',
                text: user.about,
                maxLines: 5,
                onChanged: (about) {},
              ),
            ],
          ),
        );
      }),
    );
  }
}
