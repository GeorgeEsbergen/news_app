import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 15.0 ,
            backgroundImage: NetworkImage('https://earlygame.com/uploads/images/_article3x_webp/74781/sage-valorant_200716_091637.webp'),
            ),
            SizedBox(width: 10,),
            Text('Chat',style: TextStyle(color: Colors.white),)
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 15.0,
              backgroundColor: Colors.grey[900],
              child: Icon(Icons.camera_alt_outlined)
          ),color: Colors.white,
          ),
          IconButton(onPressed: (){}, icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[900],
              child: Icon(Icons.edit)
          ),color: Colors.white,
          ),


        ],
        titleSpacing:20.0 ,
      ),


      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[900],
              ),
              child:Row(
                children: [
                  IconButton(onPressed: (){},icon: Icon(Icons.search ,color: Colors.grey[700]),),
                  SizedBox(width: 3.0),
                  Text('Search' , style: TextStyle(color: Colors.grey[700]),)
                ],
              ),
            ),
            SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal ,
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/YdQFenNrDy66fuUSMpzcye-970-80.jpg.webp'),
                            ),
                            CircleAvatar(
                              radius: 7.0,
                              backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Omen Elahbl ' , style: TextStyle(color: Colors.white),
                          maxLines:2 ,
                          overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://images3.alphacoders.com/114/thumbbig-1149728.webp'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Raze 9onbla' , style: TextStyle(color: Colors.white),
                            maxLines:2 ,
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://wallpapercave.com/dwp1x/wp6489848.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Sova 42awa ' , style: TextStyle(color: Colors.white),
                            maxLines:2 ,
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://images.wallpapersden.com/image/wxl-jett-valorant-illustration_72996.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Jett ElGamda ' , style: TextStyle(color: Colors.white),
                            maxLines:2 ,
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://wallpaperaccess.com/full/7838033.png'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Champora' , style: TextStyle(color: Colors.white),
                            maxLines:2 ,
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),
                  Container(
                    width: 60.0,
                    child: Column(

                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://mfiles.alphacoders.com/951/thumb-951085.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(height: 6,),
                        Padding(
                          padding: const EdgeInsets.only(left: 6),
                          child: Text('Viper Do5an ' , style: TextStyle(color: Colors.white),
                            maxLines:2 ,
                            overflow: TextOverflow.ellipsis,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:2.0),

                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/YdQFenNrDy66fuUSMpzcye-970-80.jpg.webp'),
                            ),



                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Omen Elahbl' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('Watch And Learn qewewqeqwfc ssdf adsdas' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('2:00 pm ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://mfiles.alphacoders.com/951/thumb-951085.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Viper' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('Welcome to My World' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('7 June ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://wallpaperaccess.com/full/7838033.png'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Champora ' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('You Want play let\'s play' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('2:00 pm ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://wallpapercave.com/dwp1x/wp6489848.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Sova 42awa ' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('in The Hunter' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('2:00 pm ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://images.wallpapersden.com/image/wxl-jett-valorant-illustration_72996.jpg'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Jett ElGamda' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('you: I\'m not Just Your Healer' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('yesterday ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/YdQFenNrDy66fuUSMpzcye-970-80.jpg.webp'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Omen ' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('Watch And Learn qewewqeqwfc ssdf adsdas' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('2:00 pm ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                              backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/YdQFenNrDy66fuUSMpzcye-970-80.jpg.webp'),
                            ),
                            CircleAvatar(
                                radius: 7.0,
                                backgroundColor: Colors.black),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(bottom: 3,end: 3),
                              child: CircleAvatar(
                                radius: 5.0,
                                backgroundColor: Colors.green,),
                            ),


                          ],
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Omen ' , style: TextStyle(color: Colors.white)),
                              SizedBox(height: 5.0,),
                              Row(
                                children: [
                                  Expanded(child: Text('Watch And Learn qewewqeqwfc ssdf adsdas' ,style:TextStyle(color: Colors.white), overflow: TextOverflow.ellipsis,)),
                                  Container(
                                    height: 5,
                                    width: 5,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,

                                    ),
                                  ),
                                  SizedBox(width: 5.0,),


                                  Text('2:00 pm ' ,style:TextStyle(color: Colors.white))
                                ],
                              )

                            ],
                          ),
                        )

                      ],
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }
}
