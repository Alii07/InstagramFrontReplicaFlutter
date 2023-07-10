import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 4;

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
          leading:
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.lock_outline),
              color: Colors.black,
            ),
          title:
          Container( 
          child: Row(
          children: [
          const Text('alislaoui',style: TextStyle(color: Colors.black),),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.arrow_downward_sharp),
              color: Colors.black,
            ),
          ]),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.add_box_outlined),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.menu_outlined),
              color: Colors.black,
            ),],
        ),
        body:
        Container( child:Column(children: [ 
        Container(
          height: 130,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Column(children: [
                  CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/Images/Ali.jpg"),
              ),
                SizedBox(height: 8), // Espacement entre le CircleAvatar et le label
      Text(
        'Ali SLAOUI',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,

        ),)
                ]),
              ),
              
              Container(
                height: 130,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Column(
                  children: [
                    Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('Publications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  ]),
              
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Column(
                  children: [
                    Text('220',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('Followers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  ]),
                  ),
                  Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Column(
                  children: [
                    Text('211',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                    Text('Suivi(e)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                  ]),
                  ),

            ]),
        ),
        Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(140, 40),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black, // Couleur de la bordure
                                width: 2, // Épaisseur de la bordure
                              ),
                              ),
                            ),
                            
                            onPressed: () {
                              // Action à effectuer lors du clic sur le bouton
                            },
                            child: Text('Modifier profil', style: TextStyle(
                              color: Colors.black, // Couleur du texte
                              fontSize: 16, // Taille du texte
                            ),),
                          ),
                          SizedBox(width:10,),
                        ElevatedButton(
                              style: ElevatedButton.styleFrom(
                              fixedSize: Size(140, 40),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black, // Couleur de la bordure
                                width: 2, // Épaisseur de la bordure
                              ),
                              ),
                            ),
                              onPressed: () {
                                // Action à effectuer lors du clic sur le bouton
                              },
                              child: Text('Partager profil', style: TextStyle(
                              color: Colors.black, // Couleur du texte
                              fontSize: 16, // Taille du texte
                            ),
                            ),
                            ),
                            SizedBox(width:10,),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                              fixedSize: Size(10, 40),
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.black, // Couleur de la bordure
                                width: 2, // Épaisseur de la bordure
                              ),
                              ),
                            ),
                              onPressed: (){}, 
                              child: Icon(Icons.person_add_alt, color: Colors.black,), )
                        ]),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: const Column(
                      children: [
                        Text("Stories à la une", style: TextStyle(fontWeight: FontWeight.bold),),
                        
                      ],),
                  ),
                  Container(
                    
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: const Column(
                      children: [
                      Text("Observez vos stories préférées sur votre profil.")
                        
                      ],),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  child:  const CircleAvatar(
                          radius: 30,
                        child: Icon(Icons.add, color: Colors.black,),
                        backgroundColor: Colors.white,
                        
                        ),
                  ),
                  SizedBox(width: 20,),
                   Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  
                  child:  const CircleAvatar(
                          radius: 30,
                        backgroundColor: Colors.grey,
                        
                        ),
                  ),
                  SizedBox(width: 10,),
                   Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child:  const CircleAvatar(
                          radius: 30,
                        backgroundColor: Colors.grey,
                        
                        ),
                  ),
                  SizedBox(width: 10,),
                   Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child:  const CircleAvatar(
                          radius: 30,
                        backgroundColor: Colors.grey,
                        
                        ),
                  ),
                  SizedBox(width: 10,),
                   Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  child:  const CircleAvatar(
                          radius: 30,
                        backgroundColor: Colors.grey,
                        
                        ),
                  ),
                  
                  
                                
                                ]),
                  ),
                  Container(
                    
  width: double.infinity, // Occupe toute la largeur de l'écran

  child: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Centrer les enfants horizontalement
    children: [
      SizedBox(height: 30,),
      Container(
        decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                  ),
        
        width: 180, // Largeur du premier container
        height: 30, // Hauteur du premier container

        child: const Center(
          child: Icon(Icons.menu_outlined,color: Colors.black,),
          ),
        ), 

      SizedBox(width: 10),// Espace entre les deux containers

      const SizedBox(
        width: 180, // Largeur du deuxième container
        height: 30, // Hauteur du deuxième container


        child: Center(
          child: Icon(Icons.menu_outlined,color: Colors.grey,),
          ),
        ),
    ],
  ),
),

Container(
  margin: EdgeInsets.symmetric(vertical: 10),
  child: Row(
    children: [
      Container(
        height: 130,
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
      ),
      ),
      Container(
        height: 130,
        width: 130,
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
        width: 130,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/Images/Ali.jpg"),
        ),
        
      ),
      
      ),),
    ],),),


                  ],),),

        
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
