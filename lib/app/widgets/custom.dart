import 'package:flutter/material.dart';
import 'package:google_meet_ui/app/app.dart';

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    insetPadding: const EdgeInsets.all(20.0),
    backgroundColor: Colors.grey[900],
    actions: [
      Container(
        height: 10.0,
      ),
      Row(
        children: [
          const Icon(
            Icons.close,
            color: Colors.white,
          ),
          Center(
            widthFactor: 3.2,
            child: Text(
              engineTitle,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
          ),
        ],
      ),
      PopupMenuItem(
        child: ListTile(
          contentPadding: const EdgeInsets.all(5.0),
          leading: const CircleAvatar(
            backgroundColor: Colors.green,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          subtitle: Text(
            emailOne,
            style: const TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          trailing: Text(
            bigNumber,
            style: const TextStyle(fontSize: 10.0, color: Colors.white),
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
          child: SizedBox(
            height: 40.0,
            width: 220.0,
            child: Center(
              child: Text(
                enginePara1,
                style: const TextStyle(color: Colors.white),
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
      PopupMenuItem(
        child: ListTile(
          contentPadding: const EdgeInsets.all(5.0),
          leading: const CircleAvatar(
            backgroundColor: Colors.deepPurple,
            // backgroundImage: AssetImage('images/meet.jpeg'),
          ),
          title: Text(
            name,
            style: const TextStyle(fontSize: 15.0, color: Colors.white),
          ),
          subtitle: Text(
            emailSecond,
            style: const TextStyle(fontSize: 12.0, color: Colors.white),
          ),
          trailing: Text(
            bigNumber,
            style: const TextStyle(fontSize: 10.0, color: Colors.white),
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
          title: Text(
            addAccount,
            style: const TextStyle(color: Colors.white, fontSize: 10.0),
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
          title: Text(
            manageAccount,
            style: const TextStyle(color: Colors.white, fontSize: 10.0),
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
        children: [
          Text(
            privacyPolicy,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            starPoint,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            termsService,
            style: const TextStyle(color: Colors.white),
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
