import 'package:news_app/modules/aa_shop_app/register/register.dart';
import 'package:news_app/modules/aa_shop_app/shop_login/cubit/cubit.dart';
import 'package:news_app/modules/aa_shop_app/shop_login/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ShopLoginScreen extends StatelessWidget {


  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    var emailController =TextEditingController();
    var passwordController =TextEditingController();

    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit, ShopLoginStates>(
        builder: (BuildContext context, state) { return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Login",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 15,),
                      Text("Login now to browse our hot offers ",style: TextStyle(fontSize: 15 , color: Colors.grey),),
                      SizedBox(height: 20,),
                      TextFormField(
                          keyboardType:TextInputType.emailAddress ,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),

                          )
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                          keyboardType:TextInputType.visiblePassword ,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password_outlined),
                            suffixIcon: Icon(Icons.visibility),



                          )

                      ),
                      SizedBox(height: 20,),
                      defaulButton(
                        fn: (){
                          ShopLoginCubit.get(context).userLogin(email: emailController.text, password: passwordController.text);
                        },
                        text: 'LOGIN',
                        width: double.infinity,
                        backGroundColor: Colors.blue,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("don\'t have account?"),
                          TextButton(onPressed: (){
                            navigateTo(context, RegisterScreen());
                          }, child: Text("Register"))
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ),
        ); },
        listener: (BuildContext context, Object? state) {  },

      ),
    );
  }
}
