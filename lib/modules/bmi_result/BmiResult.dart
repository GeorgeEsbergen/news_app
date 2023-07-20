import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiResult extends StatelessWidget {

final bool isMale ;
final int age ;
final double result;
BmiResult (
     @required this.age,
  @required this.isMale,
    @required this.result,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result',style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text('Gender: ${isMale?'Male' : 'Female'}',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
            Text('Age: $age',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20),
            Text('Result: ${result.round()}',style: TextStyle(fontSize: 20),),

          ],
        ),
      ),
    );
  }
}
