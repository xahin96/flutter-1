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

  @override
  Widget build(BuildContext context) {
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
      body: Column(children: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.all(10),
            child: Text('Container'),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 6),
                color: Colors.indigo),
          ),
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.all(10),
            child: Text('Container'),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 6),
                color: Colors.indigo),
          ),
          Container(
            height: 100,
            width: 100,
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            padding: EdgeInsets.all(10),
            child: Text('Container'),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 6),
                color: Colors.indigo),
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(onPressed: () {
            notificationOnClick('I am text button', context);
          }, child: const Text('Text Button')),
          ElevatedButton(onPressed: () {
            notificationOnClick('I am elevated button', context);
          }, child: const Text('Elevated Button')),
          OutlinedButton(onPressed: () {
            notificationOnClick('I am outlined button', context);
          }, child: const Text('Outlined Button'))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(onPressed: () {
            notificationOnClick('I am text button', context);
          }, child: const Text('Text Button')),
          ElevatedButton(onPressed: () {
            notificationOnClick('I am elevated button', context);
          }, child: const Text('Elevated Button')),
          OutlinedButton(onPressed: () {
            notificationOnClick('I am outlined button', context);
          }, child: const Text('Outlined Button'))
        ])
      ]),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: const Icon(Icons.add),
        backgroundColor: Colors.black54,
        onPressed: () {
          notificationOnClick('Add clicked', context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (int index) {
          if (index == 0) {
            notificationOnClick('Home bottom menu', context);
          }
          if (index == 1) {
            notificationOnClick('Contact bottom menu', context);
          }
          if (index == 2) {
            notificationOnClick('Profile bottom menu', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.brown),
                  accountName: Text('Zahin'),
                  accountEmail: Text('xahin96@gmail.com'),
                  currentAccountPicture: Image.network(
                      'https://avatars.githubusercontent.com/u/28812308?v=4'),
                )),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                notificationOnClick('Drawer home', context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.message),
              onTap: () {
                notificationOnClick('Drawer contact', context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person_2),
              onTap: () {
                notificationOnClick('Drawer person', context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.brown),
                  accountName: Text('Zahin'),
                  accountEmail: Text('xahin96@gmail.com'),
                  currentAccountPicture: Image.network(
                      'https://avatars.githubusercontent.com/u/28812308?v=4'),
                )),
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                notificationOnClick('Drawer home', context);
              },
            ),
            ListTile(
              title: const Text('Contact'),
              leading: const Icon(Icons.message),
              onTap: () {
                notificationOnClick('Drawer contact', context);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person_2),
              onTap: () {
                notificationOnClick('Drawer person', context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
