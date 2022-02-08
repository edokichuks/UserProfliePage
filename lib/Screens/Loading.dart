import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setScreen() async {
    await Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/third');
    });
  }

  @override
  void initState() {
    super.initState();
    setScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
            child: SpinKitFadingCube(
          color: Colors.grey.shade800,
          size: 50.0,
        )));
  }
}
