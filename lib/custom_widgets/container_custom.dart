import 'package:flutter/material.dart';

class myContainer extends StatefulWidget {
  myContainer({Key? key}) : super(key: key);

  @override
  State<myContainer> createState() => _myContainerState();
}

class _myContainerState extends State<myContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Colors.amber,
    );
  }
}
