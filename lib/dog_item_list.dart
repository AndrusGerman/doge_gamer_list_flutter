import 'package:dogs_list/dog_item.dart';
import 'package:flutter/material.dart';

class DogItemList extends StatelessWidget {
  const DogItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Item Divider
    final itemDivider = Container(
      height: 1,
      width: double.infinity,
      color: const Color.fromARGB(34, 43, 43, 43),
    );

    const length = 50;
    // Generate randoms Gamers Dogs
    final randonGamerDogList = ListView.builder(
        itemCount: length,
        itemBuilder: (context, index) {
          // Item Divider
          if (index != 0 && index < length) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [itemDivider, DogItem(index: index)],
            );
          }

          // Normal item
          return DogItem(index: index);
        });

    // Margin Container
    return Container(
      margin: const EdgeInsets.only(top: 110),
      child: randonGamerDogList,
    );
  }
}
