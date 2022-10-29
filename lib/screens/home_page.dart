import 'package:ayhaganow/screens/family_members_page.dart';
import 'package:ayhaganow/screens/phrases_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ayhaganow/compenent/category_item.dart';

import 'Numbers_page.dart';
import 'colors_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar: AppBar(
        backgroundColor:  const Color(0xff6B4226),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return NumbersPage();
              }));
            },
            color: Colors.orangeAccent,
            text: 'Numbers',
          ),
          Category(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return FamilyMembersPage();
              }));
            },
            color: Color(0xff3C7602),
            text: 'Family Member'
          ),
          Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ColorsPage();
                }));
              },
              color: Color(0xff7D40A2),
            text: 'Colors'
          ),
          Category(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PhrasesPage();
                }));
              },
              color: Color(0xff47A5CB),
            text: 'Phrases'
          ),

        ],
      ),
    );
  }
}


