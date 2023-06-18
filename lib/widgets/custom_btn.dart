import 'package:flutter/material.dart';

class AmazonButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AmazonButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Text(
          'Continue',
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
