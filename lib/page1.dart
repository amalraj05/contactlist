import 'package:contactlist/page2.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey[300],
    body: 
                  Stack(
        children: [
          Container(
            height: 115,
            width: 420,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 40, left: 20, right: 60, bottom: 30),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[300],
                  suffixIcon: Icon(Icons.mic),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  hintText: "Search Contacts",
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
            ),
            child: Container(
              height: 70,
              width: 400,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "My profile",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Icon(Icons.arrow_forward_ios_sharp)
                ],
              ),
            ),
          ),
          // contact field
          Padding(
            padding: const EdgeInsets.only(
              top: 195,
            ),
            child: Container(
              height: 800,
              width: 420,
              color: Colors.white,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(left: 310, top: 40),
            child: Icon(Icons.more_vert,size: 40,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240,left: 40),
            child: ListView.separated( separatorBuilder: (
              context, index) =>Divider(height: 0,
              
              thickness: 0,),
              itemCount: image.length,
              itemBuilder: ((context,index){
                return ListTile(title: Text(imglist[index]),
                leading: CircleAvatar(backgroundImage: AssetImage(image[index]),),);
          
              }),
              reverse: false
              ,),
          ),
          Padding(
            padding: const EdgeInsets.only(top:670, left: 280),
            child: IconButton(iconSize: 10,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => page2()));
                },
                icon: Icon(
                  Icons.contact_phone_outlined,
                  size: 40,
                )),
          ),Padding(
            padding: const EdgeInsets.only(top: 230,left: 20),
            child: Text("My Favourites",style: TextStyle(fontSize: 20),),
          ),Padding(
            padding: const EdgeInsets.only(top: 460,left: 20),
            child: Text("A",style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 690,left: 20),
            child: Text("B",style: TextStyle(fontSize: 20),),
          )
        ])
        
      );
  }
}
final List imglist=[
  "addai",
  "boampong",
  "akua",
  "addai",
  "adiza salifu",
  "akkua",
  "amponasah",
  "bis ke dei",
  "boampong",
  "boabeng",
];
List image=[
  "asset/Mask Group.png",
  "asset/Mask Group.png",
  "asset/Mask Group (1).png",
  "asset/Mask Group (1).png",
  "asset/Mask Group (1).png",
  "asset/Mask Group.png",
  "asset/Mask Group (1).png",
  "asset/Mask Group.png",
  "asset/Mask Group (1).png",
];