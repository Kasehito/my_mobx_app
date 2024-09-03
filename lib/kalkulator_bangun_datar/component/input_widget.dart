// lib/component/input_widget.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final Function(String) onChanged;

  InputWidget({required this.hintText, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hintText,
            hintStyle: const TextStyle(color: CupertinoColors.inactiveGray),
            filled: true,
            fillColor:Colors.teal.shade200,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.lightGreenAccent)
            )
        ),
        keyboardType: TextInputType.number,
        onChanged: onChanged,
      ),
    );
  }
}
