import 'dart:math';

import 'package:challenge2/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff006BB6),
        title: Text("Add Course"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check),
            iconSize: 24,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                "images/UIUX-designing-1.jpg",
                height: 250,
                width: 250,
              ),
            ),
          ),
          Text(
            "Coursera",
            style: TextStyle(
                color: Color(0xff000000),
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 120)),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UX Design",
                    style: TextStyle(
                        color: Color(0xff404040),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "22 Students",
                    style: TextStyle(
                        color: Color(0xffADADAD),
                        fontSize: 12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                customButton(
                    title: "Show Alert",
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xff006BB6), width: 3),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              actionsAlignment: MainAxisAlignment.center,
                              content: Container(
                                height: 400,
                                width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 40,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Success',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff283B51),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )));
                    }),
                SizedBox(
                  height: 20,
                ),
                customButton(
                  title: "Settings",
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        context: context,
                        builder: ((context) => Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 40),
                                  child: Text(
                                    'Settings',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color(0xff006BB6),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Allow Teacher',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff006BB6),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Switch.adaptive(
                                          value: value1,
                                          onChanged: (bool newState) {
                                            setState(() {
                                              value1 = newState;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Allow Students',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff006BB6),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Switch.adaptive(
                                        value: value2,
                                        onChanged: (newValue) =>
                                            setState(() => value2 = newValue),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Allow Attendance',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff006BB6),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 40,
                                      ),
                                      Switch.adaptive(
                                        value: value3,
                                        onChanged: (newValue) =>
                                            setState(() => value3 = newValue),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('Allow Edit',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color(0xff006BB6),
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Switch.adaptive(
                                          value: value4,
                                          onChanged: (newValue) {
                                            setState(() {
                                              newValue = value4;
                                            });
                                          }),
                                    ],
                                  ),
                                ),
                              ],
                            )));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
