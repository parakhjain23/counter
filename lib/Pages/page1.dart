import 'package:counter_app/main.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
        title: Text('Page 1'),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add))
            
            ],),
          )
        ),
        
      ),
       floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home',)),
          );
        },
        tooltip: 'HOme',
        child: const Icon(Icons.home),
      ),
    );
  }
}
