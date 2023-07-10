import 'package:flutter/material.dart';
import 'story_widget.dart';
import 'post_widget.dart';
import 'ProfilePage.dart';
import 'MonPost.dart';
import 'SearchPage.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Map<String, WidgetBuilder> routes = {
    '/profile': (BuildContext context) => ProfilePage(),
    '/MonPost': (BuildContext context) => MonPost(),
    '/recherche': (BuildContext context) => SearchPage(),
  };

  void _onBottomNavigationBarItemTapped(BuildContext context, int index) {
    if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    }
    else if (index == 0) {
      Navigator.pushNamed(context, '/');
    }
    else if(index==1){
      Navigator.pushNamed(context, '/recherche');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ali's Instagram",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      home: Builder(
        builder: (context) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Image.asset(
              'assets/Images/Insta.png',
              height: 50,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline_rounded),
                color: Colors.black,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined),
                color: Colors.black,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                StoryWidget(),
                PostWidget(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color.fromARGB(255, 63, 63, 63),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: 'Add'),
              BottomNavigationBarItem(icon: Icon(Icons.movie_creation_outlined), label: 'Reels'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            ],
            onTap: (index) => _onBottomNavigationBarItemTapped(context, index),
          ),
        ),
      ),
    );
  }
}
