import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_meet_ui/app/pages/home/my_home_controller.dart';

import '../../widgets/custom.dart';

class MyHomePage extends StatelessWidget {
  final controller = Get.put(MyHomeController());
  MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text(""),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "",
                  style: TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: const Text(
                "",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: const Text(
                "",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.contacts,
                color: Colors.white,
              ),
              title: const Text(
                "",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(""),
        actions: [
          TextButton(
            onPressed: () {
              showAlertDialog(context);
            },
            child: const CircleAvatar(
              backgroundColor: Colors.yellowAccent,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10.0),
                height: 42.0,
                width: 175.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
                  onPressed: () {},
                  child: const Text(
                    "",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: const Border(
                    top: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                    left: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                    right: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                  ),
                  color: Colors.black,
                ),
                height: 40.0,
                width: 155.0,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "",
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 100.0,
          ),
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller.pageControl,
              itemCount: controller.scrollItems?.length,
              onPageChanged: controller.changeInd,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return controller.scrollItems![index];
              },
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          DotsIndicator(
            axis: Axis.horizontal,
            decorator: const DotsDecorator(
              activeColor: Colors.deepPurple,
              size: Size(5, 5),
              activeSize: Size(10, 10),
              color: Colors.grey,
            ),
            dotsCount: 2,
            position: controller.ind!, //controller.ind!,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
              onPressed: () {},
              child: const Icon(
                Icons.mail,
                color: Colors.grey,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.grey[900]),
              onPressed: () {},
              child: const Icon(
                Icons.videocam,
                color: Colors.red,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
