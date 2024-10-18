import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber1 = 1;
  var diceNumber2 = 1;
  var player = 'A';

  var aggregator = Random();

  void rolldice1() {
    setState(() {
      player = player == 'A' ? 'B' : 'A';
      diceNumber1 = aggregator.nextInt(6) + 1;
    });
  }

  void rolldice2() {
    setState(() {
      player = player == 'A' ? 'B' : 'A';
      diceNumber2 = aggregator.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: rolldice1,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.yellow),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
          ),
          child: const Text('Roll the Dice!'),
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/dice-$diceNumber1.png',
          width: 200,
        ),
        Text(
          "Player $player Turn",
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        Image.asset(
          'assets/dice-$diceNumber2.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice2,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.yellow),
            foregroundColor: MaterialStatePropertyAll(Colors.black),
          ),
          child: const Text('Roll the Dice!'),
        ),
      ],
    );
  }
}
