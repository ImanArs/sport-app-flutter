import 'package:flutter/material.dart';

class Trainee {
  final String id;
  final String name;
  final String image;
  final String quantiy;

  Trainee({required this.id, required this.name, required this.image, required this.quantiy});
}

final List<Trainee> trains = [
  Trainee(id: '1', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
  Trainee(id: '2', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
  Trainee(id: '3', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
  Trainee(id: '4', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
  Trainee(id: '5', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
  Trainee(id: '6', name: 'Super train', image: 'https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp', quantiy: '4'),
];

class TraineeList extends StatelessWidget {
  final List<Trainee> trains;

  const TraineeList({super.key, required this.trains});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trains.length,
      itemBuilder: (context, index) {
        final train = trains[index];
        return ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(train.image),
          ),
          title: Text('${train.name} ${train.id}'),
          subtitle: Text('${train.quantiy} quantity'),
          trailing: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Workoutdetails(trainee: train),
                ),
              );
            },
            icon: const Icon(Icons.arrow_circle_right_outlined),
            color: Colors.black,
          ),
        );
      },
    );
  }
}

class Workoutdetails extends StatelessWidget {
  final Trainee trainee;

  const Workoutdetails({super.key, required this.trainee});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trainee.name),
      ),
      body: Center(
        child: Text('Name: ${trainee.name}\nID: ${trainee.id}\nQuantity: ${trainee.quantiy}'),
      ),
    );
  }
}