import 'package:dice_app/DiceImage.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer({Key? key, required this.colors}) : super(key: key);

  factory GradientContainer.blue({Key? key}) {
    return GradientContainer(
      key: key,
      colors: const [Colors.blue, Colors.cyan],
    );
  }

  factory GradientContainer.purple({Key? key}) {
    return GradientContainer(
      key: key,
      colors: const [Colors.deepPurple, Colors.purple],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      alignment: Alignment.center,
      child: const DiceImage(),
    );
  }
}
