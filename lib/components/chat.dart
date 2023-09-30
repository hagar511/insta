import 'package:flutter/material.dart';

import '../classes/online.dart';
class Chat extends StatelessWidget {
  Online online;
  Chat ({required this.online});
  @override
  Widget build(BuildContext context) {
    return Column(children:[
      Stack( children:[
        CircleAvatar(
          backgroundImage:
          Image.network(online.image,).image,
          radius: 30,
        ),
        Container( margin: EdgeInsets.only(left: 43,top: 45),  width: 15,height: 15,
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration( color: Colors.green,
              borderRadius: BorderRadius.circular(20)),)
      ],),
      Text(online.name,style: TextStyle(color: Colors.white,fontSize: 20,),),
    ],);
  }
}
