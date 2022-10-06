import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add))
          
          ],)
        ),
        
      ),
    );
  }
}
