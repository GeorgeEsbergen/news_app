import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.teal,

        elevation: 100,
        centerTitle: true,
        leading: Icon(
          Icons.menu,),
        title: Text(' Hello App '),
        actions: [
         IconButton(icon:Icon(Icons.search_outlined,) ,onPressed:(){}),
         IconButton(icon: Icon(Icons.notifications_active_outlined) ,onPressed:(){} )
        ],
      ),
      body: Column(

        children: [
         Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50.0)
           ),
           clipBehavior: Clip.antiAliasWithSaveLayer ,
           child: Stack(

             alignment: AlignmentDirectional.topCenter,
             children: [
               Image(
                   image: NetworkImage('https://images6.alphacoders.com/107/1072679.jpg'),
                    height: 200,
                    width: 200,
                    fit:BoxFit.cover ,
               ),
               Container(
                 padding: EdgeInsetsDirectional.only(top: 10),
                   child: Text('Valorant',style: TextStyle(color: Colors.teal , fontSize: 15),
                   ),
               )
    ],
           ),
         ),

        ],
      )
    );
  }

}