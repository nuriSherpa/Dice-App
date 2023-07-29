import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
  class FirstPage extends StatefulWidget {
    const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 var leftDiceNumber = "2";
 var rightDiceNumber = '4';
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.redAccent,
  appBar: AppBar(
  backgroundColor: Colors.red,
  title: Text('Dice App'),
),
        body:Center(
          child: Row(
            children: [
              Expanded(
              flex:1,
              child:GestureDetector(
                onTap:(){
                  setState(() {

                  });
                  Random random =new Random();
                  int randomNumber = random.nextInt(6) +1;
                  leftDiceNumber =randomNumber.toString();
                  print(randomNumber);
              },
                child:Image.asset('assets/images/dice$leftDiceNumber.png',scale: 2.5,)),),

              SizedBox(
                width: 50,
              ),
              Expanded(
                flex:1,
              child:GestureDetector(
                  onTap:(){
                    setState(() {

                    });
                    Random random =new Random();
                    int randomNumber = random.nextInt(6) +1;
                    rightDiceNumber =randomNumber.toString();
                    print(randomNumber);
                  },
                 child: Image.asset('assets/images/dice$rightDiceNumber.png',scale: 2.5,)),)
            ],
      ),
        )
        );



      }
}