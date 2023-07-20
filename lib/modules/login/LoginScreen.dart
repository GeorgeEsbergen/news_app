import 'package:news_app/shared/components/components.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var emailController =TextEditingController();
    var passwordController =TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
          title:Text('Login',style: TextStyle(fontSize: 30 ,color: Colors.black),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Text('Login' ,style: TextStyle(fontSize: 20 , color: Colors.black,)),
              SizedBox(height: 60,),

              TextFormField(
                controller: emailController,
                keyboardType:TextInputType.emailAddress ,
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),

                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller:passwordController ,
                obscureText: true,
                keyboardType:TextInputType.number ,
                decoration: InputDecoration(




                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility)
                ),
              ),
              SizedBox(height: 20),
              defaulButton(
                fn: (){},
                text: 'Register'
              ),
              defaulButton(
                fn: (){},
                text: 'Login',
                width: 200,
                backGroundColor: Colors.red,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have Account ? '),
                  SizedBox(height: 10),
                  TextButton(onPressed: (){}, child: Text('Register'))
                ],
              )
            ]),
        ),
      ),
    );
  }
}
