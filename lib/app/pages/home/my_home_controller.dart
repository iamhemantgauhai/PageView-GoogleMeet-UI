import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_meet_ui/app/app.dart';

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
      children: [
        const Center(
          child: CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.deepPurple,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            paraOne,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              height: 2.0,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            paraTwo,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
        Center(
          child: Text(
            paraThree,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    ),
    Column(
      children: [
        const Center(
          child: CircleAvatar(
            radius: 150.0,
            backgroundColor: Colors.deepOrange,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            paraFour,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              height: 2.0,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Text(
            paraFive,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
        ),
        Center(
          child: Text(
            paraSix,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
      ],
    ),
  ];
}
