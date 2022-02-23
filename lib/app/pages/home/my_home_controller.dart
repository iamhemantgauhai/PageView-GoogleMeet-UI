import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomeController extends GetxController {
  var selectedPageNumber = 0.obs;
  bool get isLastPage => selectedPageNumber.value == scrollItems!.length - 1;
  var pageControl = PageController();
  forwardAct() {
    if (isLastPage) {
      return null;
    } else {
      pageControl.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }

  double? ind = 0;

  void changeInd(int value) {
    ind = double.parse(value.toString());
    if (kDebugMode) {
      print('value of ind is $ind');
    }
    update();
  }

  List? scrollItems = [
    Column(
      children: const [
        Center(
          child: CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.deepPurple,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            'Get a link that you can share',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              height: 2.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            'Tap New Message to get a link that you can send to',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
        Center(
          child: Text(
            'people that you want to meet with',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
    Column(
      children: const [
        Center(
          child: CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.deepOrange,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            'Get a link that you can share',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              height: 2.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            'Tap New Message to get a link that you can send to',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
        Center(
          child: Text(
            'people that you want to meet with',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    ),
  ];
}
