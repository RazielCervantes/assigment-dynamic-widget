import 'package:flutter/material.dart';

class textCustom extends StatefulWidget {
  textCustom({Key? key}) : super(key: key);

  @override
  State<textCustom> createState() => _textCustomState();
}

class _textCustomState extends State<textCustom> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
      child: const Text(
        "Hello world",
        style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 162, 70, 8),
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
