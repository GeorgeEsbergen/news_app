import 'package:bloc/bloc.dart';
import 'package:news_app/layout/news/cubit/states.dart';
import 'package:news_app/layout/news/remotes/dio_helper.dart';
import 'package:news_app/modules/business/businessScreen.dart';
import 'package:news_app/modules/sceince/sceince.dart';
import 'package:news_app/modules/setting/setting_screen.dart';
import 'package:news_app/modules/sports/sportScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewsCubit extends Cubit<NewsState>{
  NewsCubit():super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
   var  currentIndex=0;
  List<BottomNavigationBarItem> bottomItems=[
    BottomNavigationBarItem(icon: Icon( Icons.business),
    label: 'Business'
    ),
    BottomNavigationBarItem(icon: Icon( Icons.sports),
        label: 'Sport'
    ),
    BottomNavigationBarItem(icon: Icon( Icons.science),
        label: 'Science'
    ),
    BottomNavigationBarItem(icon: Icon( Icons.settings),
        label: 'Setting'
    ),
  ];
  void changeBottomNavBar(int index){
    currentIndex=index;
    if (index==1)
      getSports();

    if (index==2)
      getScience();

    emit(NewsBottomNavState());
  }
  List <Widget> screens=[
    BusinessScreen(),
    SportScreen(),
    SceinceScreen(),
    Setting_Screen(),
  ];

    List<dynamic>business=[];
  void getBusiness(){
    emit( NewsLoadingBusinessState());
    DioHelper.getData(url : 'v2/top-headlines', query :{
      'country':'eg',
      'category':'business',
      'apiKey':'c2543a07e99241a6bd64c4475cbe9bc6',
    }).then((value) {

      business=value.data['articles'];
      emit( NewsGetBusinessState());
    }).catchError((error){
      print(error.toString());
      emit( NewsGetBusinessErrorState(error.toString()));
    });
  }


  List<dynamic>sports=[];
  void getSports(){
    emit( NewsLoadingSportsState());
    DioHelper.getData(url : 'v2/top-headlines', query :{
      'country':'eg',
      'category':'sports',
      'apiKey':'c2543a07e99241a6bd64c4475cbe9bc6',
    }).then((value) {

      sports=value.data['articles'];
      emit( NewsGetSportsState());
    }).catchError((error){
      print(error.toString());
      emit( NewsGetSportsErrorState(error.toString()));
    });
  }


  List<dynamic>science=[];
  void getScience(){
    emit( NewsLoadingScienceState());
    DioHelper.getData(url : 'v2/top-headlines', query :{
      'country':'eg',
      'category':'science',
      'apiKey':'c2543a07e99241a6bd64c4475cbe9bc6',
    }).then((value) {

      science=value.data['articles'];
      emit( NewsGetScienceState());
    }).catchError((error){
      print(error.toString());
      emit( NewsGetScienceErrorState(error.toString()));
    });
  }
}