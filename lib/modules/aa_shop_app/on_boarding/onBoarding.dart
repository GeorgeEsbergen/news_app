import 'package:news_app/modules/aa_shop_app/shop_login/shop_login_screen.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel{
  final String image;
  final String title;
  final String body;
  BoardingModel( {required this.image,required this.title,required this.body});
}
class OnBoarding extends StatefulWidget {

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var boardController=PageController();

  bool isLast =false;

  List<BoardingModel> boarding =[
    BoardingModel(
        image: 'assets/images/mm.jpg',
        title: 'On Board 1 title',
         body:  'On Board 1 body'
    ),
    BoardingModel(
        image: 'assets/images/mm.jpg',
        title: 'On Board 2 title',
        body:  'On Board 2 body'
    ),
    BoardingModel(
        image: 'assets/images/mm.jpg',
        title: 'On Board 3 title',
        body:  'On Board 3 body'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            navigateAndFinish(context ,ShopLoginScreen());
          }, child: Text('skip',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
              itemBuilder: (context , index)=> buildBoardingItem(boarding[index]),
              onPageChanged: (int index){
                if(index==boarding.length-1){
                  setState(() {
                    isLast=true;
                  });
                }else{
                  setState(() {
                    isLast=false;
                  });
                }
              },
              controller: boardController,
              physics: BouncingScrollPhysics(),
              itemCount: boarding.length,),
            ),
            SizedBox(height:15.0),
            Row(
              children: [
                SmoothPageIndicator(
                    controller: boardController,
                    effect: ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: Colors.blue,
                      dotHeight: 10,
                      dotWidth: 10,
                      expansionFactor: 4,


                    ),
                    count: boarding.length),

                Spacer(),
                FloatingActionButton(onPressed: (){
                  if(isLast){
                    navigateAndFinish(context ,ShopLoginScreen());
                  }else{
                    boardController.nextPage(duration : Duration(
                    milliseconds: 700,
                  ), curve: Curves.fastLinearToSlowEaseIn);
                  }

                },child: Icon(Icons.arrow_forward),)

              ],
            )
          ],
        ),
      )
    );

  }

  Widget buildBoardingItem(BoardingModel model)=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Image(image: AssetImage('${model.image}'),
        ),
      ),
      SizedBox(height:15.0),
      Text('${model.title}',style: TextStyle(fontSize: 24),),
      SizedBox(height:10.0),
      Text('${model.body}',style: TextStyle(fontSize: 20),),
    ],
  );
}
