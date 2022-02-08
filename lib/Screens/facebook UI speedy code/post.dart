import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 480,
      margin: EdgeInsets.only(top: 10),
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: CircleAvatar(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      'Edoki Chuks',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_horiz),
              ),
            ],
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 150.0,
              minWidth: 150.0,
              maxHeight: 350.0,
              maxWidth: MediaQuery.of(context).size.width,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Image.asset('image/_DSC0490.jpg'),
            ),
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
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 30,
                          child: Text('Love')),
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
                          Icons.add_comment,
                          color: Colors.green,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          // width: 30,
                          child: Text('Comment')),
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
                          Icons.share,
                          color: Colors.purpleAccent,
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          // width: 30,
                          child: Text('Share')),
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
