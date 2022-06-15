import 'package:flutter/material.dart';

class myIcon extends StatefulWidget {
  myIcon({Key? key}) : super(key: key);

  @override
  State<myIcon> createState() => _myContainerState();
}

class _myContainerState extends State<myIcon> {
  var icones = "flight_takeoff";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 30,
        width: 30,
        child: Icon(
          Icons.flutter_dash_outlined,
          size: 80,
        ),
      ),
    );
  }
}
