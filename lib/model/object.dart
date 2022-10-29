import 'package:flutter/cupertino.dart';

class Object {
  final String sound;
  final String? image;
  final String jpName;
  final String enName;
  const Object(
      {required this.sound,
      @required this.image,
      required this.jpName,
      required this.enName});
}
