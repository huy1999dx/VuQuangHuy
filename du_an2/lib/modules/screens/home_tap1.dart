import 'package:du_an2/modules/screens/test1.dart';
import 'package:flutter/material.dart';
import 'list_name.dart';

class tap1 extends StatelessWidget {
  const tap1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          GestureDetector(
            child: Container(
                height: 300,
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      image: new DecorationImage(
                        image: new AssetImage("assets/images/pn1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => List_name()),
              );
            },
          ),
          GestureDetector(
            child: Container(
              height: 300,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/pn2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => test1()),
              );
            },
          ),
          Container(
              height: 300,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              )),
          Container(
              height: 300,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/pn3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
