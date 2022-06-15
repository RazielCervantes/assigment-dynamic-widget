import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  TextEditingController _controller = TextEditingController();
  final TextInputType myTextInput;
  final String? title;
  final bool isPassword;
  final String? mmyHinttext;

  myTextField(
      {Key? key,
      this.myTextInput = TextInputType.name,
      this.title = "",
      this.isPassword = false,
      this.mmyHinttext = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 6.0, 12.0, 6.0),
      child: TextField(
        keyboardType: myTextInput,
        controller: _controller,
        obscureText: isPassword,
        decoration: InputDecoration(
            labelText: "User Name",
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            labelStyle: TextStyle(fontSize: 18, color: Colors.grey)),
      ),
    );
  }
}
