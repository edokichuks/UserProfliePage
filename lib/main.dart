import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:userprofliepage/Screens/Picutre_Profile/picture_profile.dart';
import 'package:userprofliepage/Screens/Profile_Page/main_screen.dart';
import 'package:userprofliepage/Screens/Profile_Page/theme.dart';
import 'package:userprofliepage/Screens/Profile_Page/user_preferences.dart';
import 'package:userprofliepage/Screens/facebook%20UI%20speedy%20code/HomePage.dart';

import 'Screens/Loading.dart';
import 'Screens/Profile_Page/user_file.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  static final String title = 'User Profile';

  @override
  Widget build(BuildContext context) {
    User user = UserPrefernces.myUser;
    return ThemeProvider(
      initTheme: user.isDarkMode ? Mytheme.darkTheme : Mytheme.lightTheme,
      child: Builder(builder: (context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeProvider.of(context),
            title: 'User Profile',
            initialRoute: '/',
            routes: {
              '/': (context) => Loading(),
              '/first': (context) => PictureProfile(),
              '/second': (context) => ProfilePage(),
              '/third': (context) => myHomePage(),
            });
      }),
    );
  }
}
