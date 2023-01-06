import 'package:flutter/material.dart';

class CustomizedAuthTextfield extends StatelessWidget {
  final TextEditingController myController;

  const CustomizedAuthTextfield({
    super.key,
    required this.myController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 60,
        width: 60,
        child: TextField(
          controller: myController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffE8ECF4), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xFF093631), width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    );
  }
}
