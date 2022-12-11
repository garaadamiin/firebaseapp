import 'package:flutter/material.dart';

class customizedButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback? onPressed;
  const customizedButton(
      {super.key,
      this.buttonText,
      this.buttonColor,
      this.textColor,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: buttonColor,
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            buttonText!,
            style: TextStyle(color: textColor, fontSize: 20),
          )),
        ),
      ),
    );
  }
}