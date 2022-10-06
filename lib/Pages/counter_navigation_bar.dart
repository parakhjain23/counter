import 'package:counter_app/Pages/page1.dart';
import 'package:counter_app/Pages/page2.dart';
import 'package:counter_app/Pages/page3.dart';
import 'package:flutter/material.dart';

class CounterNavigationBar extends StatefulWidget {
  CounterNavigationBar({super.key});  

  @override
  State<CounterNavigationBar> createState() => _CounterNavigationBarState();
}

class _CounterNavigationBarState extends State<CounterNavigationBar> {

  int _currentIndex = 0;
   void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
     appBar: AppBar(
       title: Text('My Flutter App'),
     ),
     body: _currentIndex==0? Page1() : _currentIndex==1 ? Page2(): Page3(), // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, // new
       items:const [
          BottomNavigationBarItem(
           icon: Icon(Icons.pages,),
           label: ('Home'),
         ),
          BottomNavigationBarItem(
           icon: Icon(Icons.pages),
           label: ('Messages'),
         ),
        BottomNavigationBarItem(
           icon: Icon(Icons.pages),
           label: ('Profile')
         )
       ],
     ),
   );
  }
}
