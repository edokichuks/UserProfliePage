import 'package:flutter/material.dart';

class NewPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 120,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: CircleAvatar(),
                margin: EdgeInsets.only(left: 10),
              ),
              Container(
                margin: EdgeInsets.only(left: 15),
                width: 150,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'what\'s on your mind?',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                //  color: Colors.black,
                height: 50,

                child: Container(
                  width: 100,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Icon(
                          Icons.live_tv,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 30,
                          child: Text('Live')),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                //  color: Colors.black,
                height: 50,

                child: Container(
                  width: 100,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          // width: 30,
                          child: Text('Photo')),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                //  color: Colors.black,
                height: 50,

                child: Container(
                  width: 100,
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        child: Icon(
                          Icons.camera_roll,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          // width: 30,
                          child: Text('room')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
