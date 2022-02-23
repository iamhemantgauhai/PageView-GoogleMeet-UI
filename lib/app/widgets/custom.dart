import 'package:flutter/material.dart';

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    insetPadding: const EdgeInsets.all(20.0),
    backgroundColor: Colors.grey[900],
    actions: [
      Container(
        height: 10.0,
      ),
      Row(
        children: const [
          Icon(
            Icons.close,
            color: Colors.white,
          ),
          Center(
            widthFactor: 3.2,
            child: Text(
              'Google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ],
      ),
      const PopupMenuItem(
        child: ListTile(
          contentPadding: EdgeInsets.all(5.0),
          leading: CircleAvatar(
            backgroundColor: Colors.green,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
          title: Text(
            'Bharat Kapila',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          subtitle: Text(
            'bharatkapilabk@gmail.com',
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          trailing: Text(
            '99+',
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
        ),
      ),
      Container(
        height: 10.0,
      ),
      Center(
        child: Container(
          height: 35.0,
          width: 210.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: const Border(
              top: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              bottom: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              right: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
              left: BorderSide(
                color: Colors.grey,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: const SizedBox(
            height: 40.0,
            width: 220.0,
            child: Center(
              child: Text(
                'Manage your Google Account',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      Container(
        height: 20.0,
      ),
      Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      const PopupMenuItem(
        child: ListTile(
          contentPadding: EdgeInsets.all(5.0),
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
          title: Text(
            'Bharat Kapila',
            style: TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          subtitle: Text(
            'bharat@appscrip.co',
            style: TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          trailing: Text(
            '99+',
            style: TextStyle(fontSize: 10.0, color: Colors.white),
          ),
        ),
      ),
      PopupMenuItem(
        child: ListTile(
          contentPadding: const EdgeInsets.all(5.0),
          leading: CircleAvatar(
            backgroundColor: Colors.grey[900],
            child: const Icon(
              Icons.person_add_alt,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Add another account',
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          ),
        ),
      ),
      PopupMenuItem(
        child: ListTile(
          contentPadding: const EdgeInsets.all(5.0),
          leading: CircleAvatar(
            backgroundColor: Colors.grey[900],
            child: const Icon(
              Icons.person_search_sharp,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Manage account on this device',
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          ),
        ),
      ),
      Container(height: 10),
      Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
      Container(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Privacy Policy',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            '*',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            'Terms of Service',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      Container(height: 10),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Container(
        margin: const EdgeInsets.only(bottom: 250.0),
        child: alert,
      );
    },
  );
}
