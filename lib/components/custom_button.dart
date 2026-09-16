import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String myButtonText;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.myButtonText,
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromRGBO(58, 96, 183, 1),
        foregroundColor: Colors.white,
        elevation: 0,
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(myButtonText, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }
}