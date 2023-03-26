import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CircularPercent(),
    );
  }
}

class CircularPercent extends StatefulWidget {
  const CircularPercent({super.key});

  @override
  State<CircularPercent> createState() => _CircularPercentState();
}

class _CircularPercentState extends State<CircularPercent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circular percent"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 100,
              lineWidth: 20,
              percent: 0.45,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                '40%',
                style: TextStyle(fontSize: 50),
              ),
            ),
            LinearPercentIndicator(
              barRadius: Radius.circular(20),
              lineHeight: 20,
              percent: 0.5,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              center: Text(
                '40%',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
