import 'dart:math';

import 'package:flutter/material.dart';

import 'package:first_app/components/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  List<String> diceImages = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  var activeDiceImage = '';

  rollDice() {
    setState(() {
      activeDiceImage = diceImages[Random().nextInt(diceImages.length)];
    });
  }

  @override
  Widget build(context) {
    rollDice();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          child: const StyledText('Roll Dice'),
        )
      ],
    );
  }
}
