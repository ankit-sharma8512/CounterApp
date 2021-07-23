import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Counter()));

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final int min = 0;
  final int max = 100;

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        title: Text(
          "Counter",
          style: TextStyle(
            fontFamily: "Montserrat",
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 90.0),
            Center(
              child: Text(
                "$counter",
                style: TextStyle(
                    color: Colors.red[600],
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                    fontSize: 90.0),
              ),
            ),
            SizedBox(height: 150.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  color: Colors.red[500],
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (counter > min) counter--;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        counter = min;
                      });
                    },
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.red[500],
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (counter < max) counter++;
                      });
                    },
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
