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
      body: const Text('Hello'),
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
        onTap: (int index){
          if(index == 0){
            notificationOnClick('Home bottom menu', context);
          }
          if(index == 1){
            notificationOnClick('Contact bottom menu', context);
          }
          if(index == 2){
            notificationOnClick('Profile bottom menu', context);
          }
        },
      ),
    );
  }
}
