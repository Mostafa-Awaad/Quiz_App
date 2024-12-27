import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final String buttonText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 103, 29, 116),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onTap,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
