import 'package:flutter/material.dart';

import '../classes/online.dart';
class Chats extends StatelessWidget {
  ListC lists;
  Chats({required this.lists});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Stack(children: [
        CircleAvatar(
          backgroundImage: Image
              .network(lists.image).image,
          radius: 30,
        ),
        Container(margin: EdgeInsets.only(left: 50, top: 45),  width: 10,
          height: 10,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(color: Colors.green,  borderRadius: BorderRadius.circular(20)),),  ],),
      SizedBox(width: 15,),
      Column(crossAxisAlignment: CrossAxisAlignment.start,  children:
      [Text(lists.name, style: TextStyle(color:  Colors.white, fontWeight: FontWeight.bold),),  SizedBox(height: 5,),
        Text(lists.title, style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold))  ],),
      Spacer(),
      Text(lists.time,
          style: TextStyle(color: Colors.white, fontWeight:  FontWeight.bold)),
    ],);
  }}
