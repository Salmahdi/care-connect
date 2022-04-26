import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key, required this.hintText}) : super(key: key);
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(4, 4),
              )
            ]),
        height: 54,
        width: 294,
        child: TextFormField(
          textAlign: TextAlign.center,
          onChanged: (value) {},
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            fillColor: Colors.white,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.white, width: 3.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
