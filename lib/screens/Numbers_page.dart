import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ayhaganow/compenent/item.dart';
import 'package:ayhaganow/model/object.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage();
  final List<Object> numbers = const [
    Object(
        sound: 'number_one_sound.mp3',
        jpName: 'ichi',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png'),
    Object(
        sound: 'number_two_sound.mp3',
        jpName: 'ni',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png'),
    Object(
        sound: 'number_three_sound.mp3',
        jpName: 'san',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png'),
    Object(
        sound: 'number_four_sound.mp3',
        jpName: 'yon',
        enName: 'four',
        image: 'assets/images/numbers/number_four.png'),
    Object(
        sound: 'number_five_sound.mp3',
        jpName: 'go',
        enName: 'five',
        image: 'assets/images/numbers/number_five.png'),
    Object(
        sound: 'number_six_sound.mp3',
        jpName: 'roku',
        enName: 'six',
        image: 'assets/images/numbers/number_six.png'),
    Object(
        sound: 'number_seven_sound.mp3',
        jpName: 'nana',
        enName: 'seven',
        image: 'assets/images/numbers/number_seven.png'),
    Object(
        sound: 'number_eight_sound.mp3',
        jpName: 'hachi',
        enName: 'eight',
        image: 'assets/images/numbers/number_eight.png'),
    Object(
        sound: 'number_nine_sound.mp3',
        jpName: 'kyuu',
        enName: 'nine',
        image: 'assets/images/numbers/number_nine.png'),
    Object(
        sound: 'number_ten_sound.mp3',
        jpName: 'juu',
        enName: 'ten',
        image: 'assets/images/numbers/number_ten.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff6B4226),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            item: numbers[index],
            color: Colors.orangeAccent,
            ItemType: 'numbers',
          );
        },
      ),
    );
  }
}
