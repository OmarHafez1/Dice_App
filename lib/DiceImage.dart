import 'dart:math';

import 'package:flutter/material.dart';

class DiceImage extends StatefulWidget {
  const DiceImage({super.key});

  @override
  State<DiceImage> createState() => _DiceImageState();
}

class _DiceImageState extends State<DiceImage> {
  int diceNumber = 1;
  int lastDiceNumber = 1;
  void rollDice() {
    setState(() {
      do {
        diceNumber = Random().nextInt(6) + 1;
      } while (lastDiceNumber == diceNumber);
      lastDiceNumber = diceNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice_images/dice-$diceNumber.png',
          width: 270,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 4, 94, 168),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              )),
          child: const Text('Roll the dice'),
        )
      ],
    );
  }
}
