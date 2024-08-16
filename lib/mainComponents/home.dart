import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:test_sport_app/consts/trainee.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Trainee> train1 = trains.toList();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                // padding: const EdgeInsets.all(20.0),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[100], // Задаем фон
                      borderRadius: BorderRadius.circular(15.0), // Закругленные углы
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Calories burned',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 75.0, // Уменьшенный радиус
                          lineWidth: 13.0,
                          animation: true,
                          percent: 0.5,
                          center: const Text(
                            "32%",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.orange,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[100], // Задаем фон
                      borderRadius: BorderRadius.circular(15.0), // Закругленные углы
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Calories burned',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                        CircularPercentIndicator(
                          radius: 75.0, // Уменьшенный радиус
                          lineWidth: 13.0,
                          animation: true,
                          percent: 0.5,
                          center: const Text(
                            "32%",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.orange,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TraineeList(trains: train1),
            ),
          ],
        ),
      ),
    );
  }
}