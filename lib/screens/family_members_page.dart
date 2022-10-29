import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../compenent/item.dart';
import '../model/object.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Object> familyMembers = const [
    Object(
        sound: 'grand father.wav',
        jpName: 'chichi',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png'),
    Object(
        sound: 'grand mother.wav',
        jpName: 'haha',
        enName: 'mother',
        image: 'assets/images/family_members/family_mother.png'),
    Object(
        sound: 'grand father.wav',
        jpName: 'sofu',
        enName: 'grand father',
        image: 'assets/images/family_members/family_grandfather.png'),
    Object(
        sound: 'grand mother.wav',
        jpName: 'sobo',
        enName: 'grand mother',
        image: 'assets/images/family_members/family_grandmother.png'),
    Object(
        sound: 'older bother.wav',
        jpName: 'ani',
        enName: 'older brother',
        image: 'assets/images/family_members/family_older_brother.png'),
    Object(
        sound: 'older sister.wav',
        jpName: 'ane',
        enName: 'older sister',
        image: 'assets/images/family_members/family_older_sister.png'),
    Object(
        sound: 'daughter.wav',
        jpName: 'musume',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png'),
    Object(
        sound: 'younger brohter.wav',
        jpName: 'otouto',
        enName: 'young brother',
        image: 'assets/images/family_members/family_younger_brother.png'),
    Object(
        sound: 'younger sister.wav',
        jpName: 'imouto',
        enName: 'young sister',
        image: 'assets/images/family_members/family_younger_sister.png'),
    Object(
        sound: 'son.wav',
        jpName: 'musuko',
        enName: 'son',
        image: 'assets/images/family_members/family_son.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff6B4226),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(
            item: familyMembers[index],
            color: Color(0xff3C7602),
            ItemType: 'family_members',
          );
        },
      ),
    );
  }
}
