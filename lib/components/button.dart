import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final color;
  final onPressed;
  final buttonText;

  const RoundedButton({
    super.key,
    required Color this.color,
    required String this.buttonText,
    required VoidCallback this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(buttonText, style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
