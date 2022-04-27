import 'package:dogs_list/dog_item.dart';
import 'package:flutter/material.dart';

class DogItemList extends StatelessWidget {
  const DogItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate randoms Gamers Dogs
    final randonGamerDogList = ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return DogItem(index: index);
        });

    // Margin Container
    return Container(
      margin: const EdgeInsets.only(top: 110),
      child: randonGamerDogList,
    );
  }
}
