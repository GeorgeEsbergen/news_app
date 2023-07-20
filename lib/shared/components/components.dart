import 'package:flutter/material.dart';

Widget defaulButton ({
  String text ='' ,
  required Function fn ,
  double width =double.infinity ,
  Color backGroundColor = Colors.blue  ,
})=>Container(

    width: width ,
    color: backGroundColor,
    child: MaterialButton(
        child: Text(
          '$text',
          style: TextStyle(
              fontSize: 20 ,color: Colors.white),
        ), onPressed: (){}));



Widget buildArticleItem(article,context)=> Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage('${article['urlToImage']}'),
              fit: BoxFit.cover,
            )
        ),
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${article['title']}',style: Theme.of(context).textTheme.headline1,maxLines: 4,overflow: TextOverflow.ellipsis,),
              Text('${article['publishedAt']}',style: TextStyle(color: Colors.grey))
            ],
          ),
        ),
      )
    ],
  ),
);
  Widget myDivider()=> Padding(
        padding: EdgeInsets.all(1.0),
        child: Container(
          height: 3,
          color: Colors.grey,
        ),
      );

  void navigateTo(context ,widget)=> Navigator.push(context, MaterialPageRoute(builder: (context)=>widget,));
void navigateAndFinish(context ,widget)=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>widget,), (route) => false);



