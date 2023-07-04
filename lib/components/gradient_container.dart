import 'package:flutter/material.dart';

import 'package:first_app/components/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print('Changed dice image to $activeDiceImage');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colors,
        ),
      ),
      child: Center(
        child: Column(
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
        ),
      ),
    );
  }
}
