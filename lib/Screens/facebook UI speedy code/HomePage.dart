import 'package:flutter/material.dart';

import 'myAppBar.dart';
import 'newPost.dart';
import 'post.dart';
import 'stories.dart';

class myHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              MyAppBar(),
              NewPost(),
              Stories(),
              Post(),
              Post(),
              Post(),
            ],
          ),
        ),
      ),
    );
  }
}
