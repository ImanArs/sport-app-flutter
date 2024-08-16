import 'package:flutter/material.dart';
import 'package:test_sport_app/mainComponents/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Workout'),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: Colors.blueGrey[100],
                ),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: const TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  isScrollable: false,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        child: Text('Home'),
                      ),
                    ),
                    Tab(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        child: Text('Gym'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: HomeMain(),
              ),
              Center(
                child: HomeMain(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}