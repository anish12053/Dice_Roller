import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

  int diceValue = 2;

  void rollDice(){
    setState(() {
      diceValue = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 200,
              image: AssetImage('assets/images/dice-$diceValue.png'),
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
  }
}