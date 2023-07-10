import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  @override
  _PostWidgetState createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {

bool isPressed = false;
  

  final List postItems =
  const[
    {
    "Pseudo":"R.James",
    "photo":"assets/Images/photo-1.jpeg",
    "pdp":"assets/Images/image-1.jpeg",
    "description" : "WINNERS !",
    },
{
    "Pseudo":"Cucurella",
    "photo":"assets/Images/photo-2.jpeg",
    "pdp":"assets/Images/image-2.jpeg",
    "description" : "Ig, I'm joining Europe Champions !",
    },
    {
    "Pseudo":"Oh Thiago",
    "photo":"assets/Images/photo-3.jpeg",
    "pdp":"assets/Images/image-3.jpeg",
    "description" : "Paris couldn't, so Chelsea did it!",
    },
    {
    "Pseudo":"N'golo",
    "photo":"assets/Images/photo-4.jpeg",
    "pdp":"assets/Images/image-4.jpeg",
    "description" : "Very happy for you chelsea fans",
    },
    {
    "Pseudo":"Wessss",
    "photo":"assets/Images/photo-5.jpeg",
    "pdp":"assets/Images/image-5.jpeg",
    "description" : "Les rois d'Europe, attendez-moi!",
    },
    {
    "Pseudo":"Baloon",
    "photo":"assets/Images/photo-6.jpeg",
    "pdp":"assets/Images/image-6.jpeg",
    "description" : "Et vous me demandez econre pouquoi j'ai signé une année en avance ? mdrrr",
    },
  ];


  @override
  Widget build(BuildContext context){
    return Column(
      children: 
        postItems.map((post){
          return Column(
            children: [
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                

                backgroundImage: AssetImage(post["pdp"]),
              ),
              const SizedBox(width: 10),
                    Text(post["Pseudo"],
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
                height: 300,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage(post['photo']),
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
                     
            child : Row(
              children:[
            
            
            Text(post["Pseudo"], style: const TextStyle(
                  fontSize:12,
                  fontWeight: FontWeight.bold,
                  ),),
            const SizedBox(width: 2),
            const Text(":"),
            const SizedBox(width: 5),
            Text(post["description"],
            softWrap: true,)
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
          );
        }).toList()
        
    );
  }
}