import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  const AuthField({super.key,required this.textEditingController,required this.hintText, this.isObscureText = false});

  final TextEditingController textEditingController;
  final String hintText;
  final bool isObscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText
      ),
      validator: (value){
        if(value!.isEmpty){
          "$hintText is missing";
        }
        return null; //everything is good, there is a value and no error. So validator validated it correclty and found no error.
      },
      obscureText: isObscureText,
      // obscuringCharacter: '*',
    );
  }
}
