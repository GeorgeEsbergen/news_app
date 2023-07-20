import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {

var controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
              controller:controllerSearch,


          )
        ],
      ),
    );
  }
}
