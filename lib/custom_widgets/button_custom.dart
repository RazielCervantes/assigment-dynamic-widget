import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  myButton({Key? key}) : super(key: key);

  @override
  State<myButton> createState() => _myContainerState();
}

class _myContainerState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      child: ElevatedButton(
        child: Text(
          "button",
          style: TextStyle(fontSize: 40),
        ),
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: Colors.red),
      ),
    );
  }
}
