import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(SearchPage());
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int _selectedIndex = 1;

  void _onBottomNavigationBarItemTapped(BuildContext context, int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 4) {
      Navigator.pushNamed(context, '/profile');
    } else if (index == 0) {
      Navigator.pushNamed(context, '/');
    }
    else if(index==1){
      Navigator.pushNamed(context, '/recherche');
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,

          title:
          Container(
          width: 400,
          height: 30,
          child: const TextField(
            decoration: InputDecoration(
              labelText: 'Entrez votre texte',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            ),
            ),
          
        ),
        body:
        
        SingleChildScrollView( child:Column(children: [ 
          SizedBox(height: 2,),
        Container(
          height: 262,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      SizedBox(height: 2,),
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

                
            ],
            ),
            ),
            Container(
          height: 262,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      SizedBox(height: 2,),
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

                
            ],
            ),
            ),
            SizedBox(height: 1,),
            Container(
        padding: EdgeInsets.symmetric(horizontal: 1),
        height: 262,
        width: 128,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      ),
            ],
            ),
            ),
            ],
        ),
        ),
        SizedBox(height: 1,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 1),
          height: 262,
          child: Row(
            children: [
              Container(
        
        height: 262,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
          fit: BoxFit.cover,
        ),
            
      ),
      ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      SizedBox(height: 2,),
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

                
            ],
            ),
            ),
            Container(
          height: 262,
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 128,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

      InkWell(
  onTap: () {
    Navigator.pushNamed(context, '/MonPost');
  },
     child:Container(
        height: 130,
        width: 128,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),),

                
            ],
            ),
            ),
            
            ],
            ),
            ),
            ],
            ),
            ),
            Container(
          height: 262,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      SizedBox(height: 2,),
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

                
            ],
            ),
            ),
            Container(
          height: 262,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: Column(
                  children: [
                Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      SizedBox(height: 2,),
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),

                
            ],
            ),
            ),
            SizedBox(height: 1,),
            Container(
        height: 262,
        width: 128,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      ),
            ],
            ),
            ),
            ],
        ),
        ),
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
            BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_outlined), label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.movie_creation_outlined), label: 'Reels'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
          currentIndex: _selectedIndex, // Index de l'élément sélectionné
          onTap: (index) => _onBottomNavigationBarItemTapped(context, index),
        ),
      ),
    );
  }
}