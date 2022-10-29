import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../compenent/item.dart';
import '../model/object.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Object> colors = const [
    Object(
        sound: 'black.wav',
        jpName: 'kuro',
        enName: 'black',
        image: 'assets/images/colors/color_black.png'),
    Object(
        sound: 'brown.wav',
        jpName: 'chairo',
        enName: 'brown',
        image: 'assets/images/colors/color_brown.png'),
    Object(
        sound: 'dusty yellow.wav',
        jpName: 'be-ju',
        enName: 'dusty yellow',
        image: 'assets/images/colors/color_dusty_yellow.png'),
    Object(
        sound: 'gray.wav',
        jpName: 'haiiro',
        enName: 'gray',
        image: 'assets/images/colors/color_gray.png'),
    Object(
        sound: 'green.wav',
        jpName: 'midori',
        enName: 'green',
        image: 'assets/images/colors/color_green.png'),
    Object(
        sound: 'red.wav',
        jpName: 'aka',
        enName: 'red',
        image: 'assets/images/colors/color_red.png'),
    Object(
        sound: 'white.wav',
        jpName: 'shiro',
        enName: 'white',
        image: 'assets/images/colors/color_white.png'),
    Object(
        sound: 'yellow.wav',
        jpName: 'kiiro',
        enName: 'yellow',
        image: 'assets/images/colors/yellow.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colors'),
        backgroundColor: Color(0xff6B4226),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            item: colors[index],
            color: Color(0xff7D40A2),
            ItemType: 'colors',
          );
        },
      ),
    );
  }
}
