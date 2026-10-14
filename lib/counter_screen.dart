import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void increase() {
    setState(() {
      _counter++;
    });
  }

  void decrease() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Increase and Decrease",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Text(
            '$_counter',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 60.0),
                child: ElevatedButton(onPressed: increase, child: Text("Increase")),
              ),
              SizedBox(width: 30),
              ElevatedButton(onPressed: decrease, child: Text("Decrease")),
            ],
          ),
        ],
      ),
    );
  }
}
