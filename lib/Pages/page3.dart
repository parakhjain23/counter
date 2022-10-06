import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
        title: Text('Page 3'),
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
