import 'package:news_app/layout/news/cubit/cubit.dart';
import 'package:news_app/layout/news/cubit/states.dart';
import 'package:news_app/layout/news/remotes/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/main.dart';

class NewsLayout extends StatelessWidget {


  bool isDark=true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit,NewsState>(
        listener: (context,states){},
        builder: (context,states)
        {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('News App'),
              actions: [
              IconButton(onPressed: (){}, icon:  Icon(Icons.search),),
              IconButton(onPressed: (){}, icon:  Icon(Icons.brightness_4_outlined),)
              ],
            ),
            body: cubit.screens[cubit.currentIndex],

            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
              items: cubit.bottomItems,
            ),
          );
        },

      ),


    );
  }
}
