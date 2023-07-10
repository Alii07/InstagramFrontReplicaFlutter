import 'package:flutter/material.dart';



class StoryWidget extends StatelessWidget {
  const StoryWidget({Key? key}) : super(key: key);

  final List StoryItems =
  const[
  {
    "pseudo" : "SLAOUI Ali",
    "photo" : "assets/Images/Ali.jpg",
  },
  {
    "pseudo":"R.James",
    "photo":"assets/Images/image-1.jpeg",
  },
  {
    "pseudo":"Cucurella",
    "photo":"assets/Images/image-2.jpeg",
  },
  {
    "pseudo":"Oh Thiago",
    "photo":"assets/Images/image-3.jpeg",
  },
  {
    "pseudo":"N'golo",
    "photo":"assets/Images/image-4.jpeg",
  },
  {
    "pseudo":"Wessss",
    "photo":"assets/Images/image-5.jpeg",
  },
  {
    "pseudo":"baloon",
    "photo":"assets/Images/image-6.jpeg",
  },
  {
    "pseudo":"Campeone del mundo",
    "photo":"assets/Images/image-7.jpeg",
  },

  ];

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: StoryItems.map((story){
          
          return Container(
            height: 100,
            width: 70,
            color: story['color'],
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Column(
            children:[
              Stack(
                alignment: Alignment.center,
                children: [  
              Image.asset('assets/Images/story.png', height: 70,),
              Image.asset('assets/Images/story.png', height: 68,),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                backgroundImage: AssetImage(story["photo"]),
              ),
                ],
                  ),
              const SizedBox(height: 8),
              Text(
                story["pseudo"],
                maxLines: 1,
                style: const TextStyle(
                  fontSize:12
                  ),
                ),
        ]));
         }).toList() ,  
        ),
    );
  }
}