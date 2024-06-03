import 'package:contact_list/views/widgets/app_text_form.dart';
import 'package:flutter/material.dart';

import '../../utils/strings.dart';

class FormLayout extends StatelessWidget {
  const FormLayout({super.key, required this.formKey, required this.nameController, required this.numberController, required this.addContact});
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController numberController;
  final Function() addContact;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextForm(
            controller: nameController,
            hintText: labelForName,
            labelText: labelForName,
            errorText: errorTextForName,
            inputTextType: TextInputType.text,
          ),
          AppTextForm(
            controller: numberController,
            hintText: labelForNumber,
            labelText: labelForNumber,
            errorText: errorTextForNumber,
            inputTextType: TextInputType.number,
            maxLength: 11,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,),
            child: ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                   addContact();
                }
              },
              child: Text(elevatedButtonText),
            ),
          ),
        ],
      ),
    );
  }
}
