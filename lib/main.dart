import 'package:flutter/material.dart';

import 'classes/online.dart';
import 'components/chat.dart';
import 'components/chats.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}
class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => ScreenState(); }
class ScreenState extends State<Screen> {
  List<Online> Insta=[ Online("https://www.shutterstock.com/image photo/profile-picturesmiling-young-african-260nw-1873784920.jpg", "Kareem"),  Online("https://media.istockphoto.com/id/1338134336/photo/headshot portrait-african-30s-man-smile-look-at-camera.jpg?b=1&s=170667a&w=0&k=20&c=j oMdWCMLx5rIx-_W33o3q3aW9CiAWEvv9XrJQ3fTMU=",
    "Eslam",),
    Online("https://media.istockphoto.com/id/1369813852/photo/happy-cheerful african-student-guy-reading-admission-letter-fromschool.jpg?s=612x612&w=0&k=20&c=KsqWQeP-lGoPgYW2c9CT4oZDmnI7Lx1MkAPD16o0cw=",
        "Ahmed"),
    Online("https://www.shutterstock.com/image-photo/smiling-dreamy-african business-man-260nw-1626375361.jpg",
        "adel"),
    Online("https://www.shutterstock.com/image-photo/happy-digital-gadgets user-man-260nw-2156291483.jpg"
        ,"omar"),

    Online("https://static.vecteezy.com/system/resources/thumbnails/003/492/047/s mall/closeup-portrait-of-a-charming-girl-over-blue-studio-background-image free-photo.jpg",
        "Menna"),
  ];
  List<ListC> l=[ ListC("https://www.shutterstock.com/image-photo/profile picturesmiling-young-african-260nw-1873784920.jpg",
      'Kareem Ahmed',"Welcome to flutter","11:37 PM"),
    ListC("https://www.shutterstock.com/image-photo/happy-digital-gadgets user-man-260nw-2156291483.jpg",
        'Omar Ahmed',"Welcome to Anything","11:20 PM"),  ListC("https://media.istockphoto.com/id/1338134336/photo/headshot portrait-african-30s-man-smile-look-at-camera.jpg?b=1&s=170667a&w=0&k=20&c=j oMdWCMLx5rIx-_W33o3q3aW9CiAWEvv9XrJQ3fTMU="
        ,'Eslam Medhat',"Welcome to Firebase","11:11 PM"),  ListC("https://media.istockphoto.com/id/1369813852/photo/happy-cheerful african-student-guy-reading-admission-letter-fromschool.jpg?s=612x612&w=0&k=20&c=KsqWQeP-lGoPgYW2c9CT4oZDmnI7Lx1MkAPD16o0cw=",
      'Ahmed Emad',"welcome to facebook","11:00 PM",),

    ListC("https://static.vecteezy.com/system/resources/thumbnails/003/492/047/sm all/closeup-portrait-of-a-charming-girl-over-blue-studio-background-image free-photo.jpg",
      'Menna Wael',"Welcome to JS ","10:37 PM",),
    ListC("https://www.shutterstock.com/image-photo/head-shot-portrait-close smiling-260nw-1714666150.jpg",
        'Ahmed Essam',"Welcome to YouTube","9:20 PM"),
    ListC("https://www.shutterstock.com/image-photo/portrait-beautiful-black woman-isolated-260nw-1062227855.jpg",
        'Nada ahmed',"Welcome to Assignment","7:20 PM"),
    ListC("https://www.shutterstock.com/image-photo/black-skin-beauty woman-healthy-260nw-1936038526.jpg",
      'Nada esmail',"How Are You","6:00 PM",),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black,
      leading: Container(margin: EdgeInsets.all(10),
        child: CircleAvatar(radius: 20,
          backgroundImage: Image
              .network(
              "https://www.shutterstock.com/image-photo/smiling-young-man wearing-shirt-260nw-1309082077.jpg")
              .image,
        ),),
      title: Text("Chats"),
      actions: [ SizedBox(width: 20,),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
          child: Icon(Icons.camera_alt, color: Colors.black,),  ),
        SizedBox(width: 15,),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
          child: Icon(Icons.edit, color: Colors.black,),
        ),
      ],),
      backgroundColor: Colors.black,
      body: ListView( physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children:[
          Container(alignment: Alignment.center,
            decoration:
            BoxDecoration(borderRadius:(BorderRadius.circular(30)),color:  Colors.grey),
            width: double.infinity, height: 50, margin: EdgeInsets.all(15),  child: TextFormField(
              decoration:
              InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.black38),  prefixIcon: Icon(Icons.search,color: Colors.black38,),  ),),
          ),
          Container( height: 100,
            child: ListView.separated(physics: BouncingScrollPhysics(),  shrinkWrap: true,
                separatorBuilder: (context,index){
                  return SizedBox(width: 15,);
                },
                scrollDirection: Axis.horizontal,
                itemCount: Insta.length,
                itemBuilder: (context,i){
                  return Chat(online: Insta[i]);
                }),),
          Container(height: 500,
            child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context,i){
                  return Chats(lists: l[i]);
                }, separatorBuilder: (context,i){
              return SizedBox(height: 15);  }, itemCount: l.length),  ),
        ],),
    );

  }}

