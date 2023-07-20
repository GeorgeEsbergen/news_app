import 'package:news_app/layout/news/cubit/cubit.dart';
import 'package:news_app/layout/news/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

class SceinceScreen extends StatelessWidget {
  const SceinceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsState>(
      listener:(context, state){} ,
      builder: (context, state){
        var list= NewsCubit.get(context).science;


        return ConditionalBuilder(
          condition: list.length>0 ,
          builder:(context)=>ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder:(context,index)=>buildArticleItem(list[index],context),
              separatorBuilder:(context,index)=>myDivider(),
              itemCount: 10) ,
          fallback: (context)=>Center(child: CircularProgressIndicator()),

        );
      } ,

    );
  }
}