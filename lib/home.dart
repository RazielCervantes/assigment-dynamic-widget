import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:itk_mentor_assigmnet/displayed_widgets.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  late TextEditingController _numberOfWidgets;
  late int numbersd;

  int _value = 0;

  bool istextFieldFill = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _numberOfWidgets = TextEditingController();
    _numberOfWidgets.addListener(() {
      final istextFieldFill = _numberOfWidgets.text.isNotEmpty;

      setState(() {
        this.istextFieldFill = istextFieldFill;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _numberOfWidgets.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic widget"),
          centerTitle: true,
          toolbarHeight: 60,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "select the type of widget",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              DropdownButton(
                value: _value,
                items: [
                  DropdownMenuItem(
                    child: Text("Select a Widget"),
                    value: 0,
                  ),
                  DropdownMenuItem(
                    child: Text("Text Field"),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text("Text"),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text("container"),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text("Button"),
                    value: 4,
                  ),
                  DropdownMenuItem(
                    child: Text("Icons"),
                    value: 5,
                  ),
                  // DropdownMenuItem(
                  //   child: Text("Radio"),
                  //   value: 6,
                  // ),
                  // DropdownMenuItem(
                  //   child: Text("Checkbox"),
                  //   value: 7,
                  // ),
                  // DropdownMenuItem(
                  //   child: Text("image"),
                  //   value: 8,
                  // ),
                ],
                onChanged: (var value) {
                  setState(() {
                    _value = value as int;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "How many widgets do you want to create",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: TextField(
                  keyboardType: TextInputType.number,
                  // controller: _numberOfWidgets,
                  controller: _numberOfWidgets,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                      labelText: "number of widgets",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      ),
                      labelStyle: TextStyle(fontSize: 18, color: Colors.grey)),
                ),
              ),
              // TextButton(onPressed: () {}, child: Text("summit"))
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        _numberOfWidgets.clear();
                        setState(() {
                          _value = 0;
                        });
                      },
                      child: Text("Reset widgets")),
                  ElevatedButton(
                      onPressed: istextFieldFill && _value > 0
                          ? () {
                              setState(() {
                                Get.to(displayedWidgets(
                                  typeOfWidget: _value,
                                  numberofWidgets: _numberOfWidgets.text,
                                ));
                              });
                            }
                          : null,
                      child: Text("see widgets"))
                ],
              ),
            ],
          ),
        ));
  }
}
