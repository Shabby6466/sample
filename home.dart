import 'package:flutter/material.dart';
import 'package:first_app_after_exams/counter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
     Widget build(BuildContext context) {
   final checkProvider = Provider.of<CounterApp>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App with provider"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              checkProvider.getCount().toString(),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          checkProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
