import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String buttonName;
  final void Function()? onPressed;
  final Color? buttoncolor;


  const MyButton({
    super.key, required this.buttonName, this.onPressed, this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        // ignore: prefer_const_constructors
        child: Text(
          buttonName,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: buttoncolor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}