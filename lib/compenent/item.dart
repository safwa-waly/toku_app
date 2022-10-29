import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ayhaganow/model/object.dart';

class Item extends StatelessWidget {
      final Object item;
      final Color color;
      final String ItemType;

  const Item({super.key, required this.item, required this.color, required this.ItemType, });



  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Container(color: Color(0xffFFF4D9), child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                Text(
                  item.enName,
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/$ItemType/');
              player.play(item.sound);
    },

              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 24,
              ))
        ],
      ),
    );
  }
}
class PhraseItem extends StatelessWidget {
  final Object phrase;
  final Color color;
  final String ItemType;

  const PhraseItem({super.key, required this.phrase, required this.color, required this.ItemType, });



  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Container(color: color, height: 100,),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                Text(
                  phrase.enName,
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                AudioCache player = AudioCache(prefix: 'assets/sounds/$ItemType/');
                player.play(phrase.sound);
              },

              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 24,
              ))
        ],
      ),
    );
  }
}

