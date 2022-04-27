import 'package:flutter/material.dart';
import 'package:username_gen/username_gen.dart';

class DogItem extends StatelessWidget {
  const DogItem({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    // Image Dog
    final image = Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage("https://place.dog/300/200?index=$index"))),
    );

    final nameGenerator = UsernameGen();
    nameGenerator.setSeperator(" ");

    final textContent = Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name
          Text(
            nameGenerator.generate(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          // Description
          Text(
            "ID: ${UsernameGen().generate()}",
            style: const TextStyle(fontSize: 13),
          )
        ],
      ),
    );

    // Create button
    final button = IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.favorite,
          color: Colors.red,
        ));

    // Box Shadow
    const decorationContainer = BoxDecoration(
      boxShadow: [
        BoxShadow(
            color: Color.fromARGB(31, 29, 29, 29),
            blurRadius: 30,
            offset: Offset(0, 0.3)),
      ],
    );

    return Container(
      margin: const EdgeInsets.all(10),
      decoration: decorationContainer,
      child: ListTile(
        leading: image,
        title: textContent,
        trailing: button,
      ),
    );
  }
}
