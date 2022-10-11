import 'dart:ui';
import 'package:flutter/material.dart';
import 'dialog_page.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void showCustomDialog(String Image, String Name, String Email) {
    showDialog(
        context: context,
        builder: (context) {
          return BackdropFilter(
              child: AlertDialog(
            backgroundColor: Colors.black.withOpacity(0.5),
            insetPadding: EdgeInsets.fromLTRB(20, 50, 20, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            content: Container(
              // color: Colors.black.withOpacity(0.5),
              child: Dialogue(image: Image, name: Name, email: Email),
            ),
          ),
            filter: ImageFilter.blur(
              sigmaX:6,
              sigmaY: 6,
            )
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            shadowColor: Colors.black,
            margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 7.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10,1,10,1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  //centerTitle: true,
                  Text(
                    'Sundaram',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/mydp.jpg'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showCustomDialog('images/Chancellor.jpg', 'Chancellor',
                                'chancellor@vitap.ac.in');
                          },
                          child: const CircleAvatar(
                            backgroundImage: AssetImage('images/Chancellor.jpg'),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Chancellor',
                          style: TextStyle(
                              color: Colors.black,
                                  fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]
                  ),
                ),

                Container(
            margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      showCustomDialog('images/Vice Chancellor.jpg', 'Vice Chancellor',
                          'vicechancellor@vitap.ac.in');
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/Vice Chancellor.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Vice Chancellor',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
          ),

                Container(
            margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      showCustomDialog('images/Dean.png', 'Dean',
                          'Dean@vitap.ac.in');
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/Dean.png'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Dean',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
          ),

                Container(
            margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 7.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      showCustomDialog('images/Asst Dean.jpg', 'Assistant Dean',
                          'assistantdean@vitap.ac.in');
                    },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('images/Asst Dean.jpg'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Assistant Dean',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}