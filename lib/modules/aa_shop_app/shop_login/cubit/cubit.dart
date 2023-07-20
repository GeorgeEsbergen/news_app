import 'package:news_app/layout/news/remotes/dio_helper.dart';
import 'package:news_app/layout/news/remotes/end_points.dart';
import 'package:news_app/modules/aa_shop_app/shop_login/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShopLoginCubit extends Cubit<ShopLoginStates>{
  ShopLoginCubit() : super(ShopLoginInitialState());
  static ShopLoginCubit get(context)=> BlocProvider.of(context);
  void userLogin({
    required String email,
    required String password,
}){
    emit(ShopLoginLoadingState());
    DioHelper.postData(url: LOGIN, data:{
      'email':email,
      'password':password,
    } ).then((value) {
      print(value.data); 
      emit(ShopLoginSuccessesState());
    }).catchError((error){
      emit(ShopLoginErrorState(error.toString()));

    });

  }
}