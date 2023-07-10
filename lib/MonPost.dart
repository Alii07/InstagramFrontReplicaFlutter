import 'package:flutter/material.dart';
import 'main.dart';
import 'post_widget.dart';

void main() {
  runApp(MyApp());
}

class MonPost extends StatefulWidget {
  @override
  _MonPostState createState() => _MonPostState();
}

class _MonPostState extends State<MonPost> {
  int _selectedIndex = 4;
  bool isPressed = false;

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
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            icon: const Icon(Icons.arrow_back_outlined),
            color: Colors.black,
          ),
          title: const Row(
            children: [
              Text('Publications', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        body: 
        SingleChildScrollView(
            child: Column(
              children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                

                backgroundImage: const AssetImage("assets/Images/Ali.jpg"),
              ),
              const SizedBox(width: 10),
                    Text("Ali SLAOUI",
                    style: const TextStyle(
                  fontSize:12,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(width: 5),
                  Image.asset("assets/Images/ver.jpg",height: 13,),
                  Expanded(
                    child: Container(),
                  ),
                  IconButton(
                    onPressed:(){},
                    icon: const Icon(Icons.more_horiz),
                  )
                  ],
                  
                ),
              ),

              
              Container(
                height: 400,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 40,

            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      isPressed ? Icons.favorite : Icons.favorite_outline_rounded,
                      color:Colors.pink
                    ),
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                      }
                      ),
                  IconButton(
                    onPressed:(){},
                    icon: const Icon(Icons.message_outlined),
                  ),
                IconButton(
                    onPressed:(){},
                    icon: const Icon(Icons.send_outlined),
                  )
              ],)
          ),
          Container(
            height: 30,  
            padding: EdgeInsets.symmetric(horizontal: 10),
                     
            child : const Row(
              children:[
            
            
            Text("Ali SLAOUI", style: TextStyle(
                  fontSize:12,
                  fontWeight: FontWeight.bold,
                  ),),

            SizedBox(width: 3),
            Text("Blue is the colour;"),
              ],
            )
            ),
            Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Text("32 comments", style: TextStyle(color: Colors.grey),),
                  
                ]
              
                ),
            ),
            Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Text("3 days ago", style: TextStyle(color: Colors.grey),),
                ]
                ),
            )
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
