import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      color: Colors.lightGreen,
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  notificationOnClick(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  myAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text('Alert'),
            content: Text('Do you want to delete?'),
            actions: [
              TextButton(
                  onPressed: () {
                    notificationOnClick('hi', context);
                    Navigator.of(context).pop();
                  },
                  child: const Text('Yes')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('No'))
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
        padding: const EdgeInsets.only(left: 5, top: 25, right: 5, bottom: 25),
        backgroundColor: Colors.deepPurple,
        foregroundColor: CupertinoColors.lightBackgroundGray,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))));
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Application'),
        actions: [
          IconButton(
              onPressed: () {
                notificationOnClick('No notifications', context);
              },
              icon: const Icon(Icons.notifications))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'First Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Last Name'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Email Address'),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit form'),
                style: buttonStyle,
              )),
        ],
      ),
    );
  }
}
