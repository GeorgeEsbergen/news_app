import 'package:news_app/modules/counter/cubit/cubit.dart';
import 'package:news_app/modules/counter/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Count extends StatelessWidget {

   

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterState>(
        listener: (context  ,state){} ,
        builder: (context  ,state){
          return  Scaffold(
            appBar: AppBar(),
            body: Center(

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    CounterCubit.get(context).plus();

                  }, child: Text('plus',style: TextStyle(fontSize: 20),)),
                  Text('${CounterCubit.get(context).counter}',style: TextStyle(fontSize: 20),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    CounterCubit.get(context).minus();


                  }, child: Text('minus',style: TextStyle(fontSize: 20),)),

                ],
              ),
            ),

          );
        } ,

      ),
    );
  }
}


