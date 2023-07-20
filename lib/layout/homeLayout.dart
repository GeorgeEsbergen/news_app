import 'package:news_app/modules/archivedScreen/archivedScreen.dart';
import 'package:news_app/modules/doneScreen/doneScreen.dart';
import 'package:news_app/modules/tasks/taskScreen.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
class HomeLayout extends StatefulWidget {

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;
  List <Widget> screens=[
    TaskScreen(),
    DoneScreen(),
    ArchiveScreen(),
  ];
  List <String> screen=[
   'task',
    'Done',
    'Archive         ',
  ];
  //****************************************************************
 late Database databbase1;
 var scaffoldKey =GlobalKey<ScaffoldState>();
 bool isButtonSheet=false;
 IconData icon=Icons.edit;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CreateDataBase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(screen[currentIndex]),
      ),
      body: Center(child: screens[currentIndex]),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: () {
        if (isButtonSheet) {
          Navigator.pop(context);
          setState(() {
            icon = Icons.edit;
          });
        }
        else {
          scaffoldKey.currentState!.showBottomSheet((context) =>
              Container(
                width: double.infinity,
                height: 120,
                color: Colors.red,
              )
          );
        }
      }),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
         setState(() {
           currentIndex=index;

         });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon:Icon(Icons.menu),
            label: 'Task'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.check_circle_outline),
              label: 'Done'
          ),
          BottomNavigationBarItem(
              icon:Icon(Icons.archive_outlined),
              label: 'Archived'
          ),

      ],),

    );
  }
  void CreateDataBase() async{
      databbase1 = await openDatabase(
      'todooo.db',
      version: 5,
      onCreate: (dataBase , version){
        print('dataBase Created');
        dataBase.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY ,  title TEXT ,date TEXT,time TEXT , status TEXT)').then((value) {
          print('table Created');}).catchError((error){
            print('Error When  Creating table ${error.toString()}');
        });
      },
      onOpen: (dataBase){
        print('dataBase Opened');
    }
    );
  }
  void InserIntoDataBase(){
   databbase1.transaction((txn)
   async {
     txn.rawInsert('INSERT INTO tasks (title , date , time , status ) VALUES ("tsk","20-10-2001","20","new") '
     ).then((value) {
       print('$value inserted');
     }).catchError((error){
       print('Error When  Inserting  Record ${error.toString()}');
     });
     return null;
   });


  }
}
