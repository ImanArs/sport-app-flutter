import 'package:flutter/material.dart';

class Workoutdetails extends StatelessWidget {
  final dynamic trainee;

  const Workoutdetails({super.key, required this.trainee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${trainee.name}'),
      ),
    );
  }
}