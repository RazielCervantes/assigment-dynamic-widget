import 'package:flutter/material.dart';
import 'package:itk_mentor_assigmnet/custom_widgets/custom_textfield.dart';
import 'package:itk_mentor_assigmnet/custom_widgets/custom_text.dart';
import 'package:itk_mentor_assigmnet/custom_widgets/container_custom.dart';
import 'package:itk_mentor_assigmnet/custom_widgets/button_custom.dart';
import 'package:itk_mentor_assigmnet/custom_widgets/icon_custom.dart';

class displayedWidgets extends StatelessWidget {
  final typeOfWidget;
  final numberofWidgets;

  int number = 3;

  checkWidget() {
    switch (typeOfWidget) {
      case 1:
        return myTextField();

      case 2:
        return textCustom();

      case 3:
        return myContainer();

      case 4:
        return myButton();

      case 5:
        return myIcon();

      default:
        print("");
    }
  }

  displayedWidgets(
      {Key? key, required this.numberofWidgets, required this.typeOfWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: int.parse(numberofWidgets),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),

            child: checkWidget(),

            //     ),
          );
        },
      ),
    );
  }
}
