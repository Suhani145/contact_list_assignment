import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  const AppTextForm({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.errorText,
    this.maxLength,
    required this.inputTextType,
  });
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String errorText;
  final int? maxLength;
  final TextInputType inputTextType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 21, right: 21),
      child: TextFormField(
          keyboardType: inputTextType,
          controller:controller,
          decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
      ),
        maxLength: maxLength,
        validator: (value)
        {
          if(value!.trim().isEmpty)
            {
              return errorText;
            }
          return null;
        },
      ),
    );
  }
}
