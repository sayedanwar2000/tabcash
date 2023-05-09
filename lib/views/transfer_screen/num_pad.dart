import 'package:flutter/material.dart';
import 'package:tabcash/views/transfer_screen/NumberButton.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;
  final double iconSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function dotFunction;

  const NumPad({
    Key? key,
    required this.buttonSize,
    required this.iconSize,
    required this.buttonColor,
    required this.iconColor,
    required this.delete,
    required this.dotFunction,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // implement the number keys (from 0 to 9) with the NumberButton widget
          // the NumberButton widget is defined in the bottom of this file
          children: [
            NumberButton(
              number: 1,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 2,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 3,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 4,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 5,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 6,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 7,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 8,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 9,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // this button is used to submit the entered value
            IconButton(
              onPressed: () => dotFunction(),
              icon: Icon(
                Icons.fiber_manual_record,
                color: iconColor,
              ),
              iconSize: 10,
            ),
            const SizedBox(
              width: 10,
            ),
            NumberButton(
              number: 0,
              size: buttonSize,
              color: buttonColor,
              controller: controller,
            ),
            const SizedBox(
              width: 10,
            ),
            // this button is used to delete the last number
            IconButton(
              onPressed: () => delete(),
              icon: Icon(
                Icons.backspace_outlined,
                color: iconColor,
              ),
              iconSize: 30,
            ),
          ],
        ),
      ],
    );
  }
}
