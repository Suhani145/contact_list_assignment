import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/strings.dart';

class AlertBoxForDeletion extends StatelessWidget {
  const AlertBoxForDeletion({
    super.key,
    required this.deleteContact,
    required this.index});
    final Function(int) deleteContact;
    final int index;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(alertDialogTitle,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),
      ),
      content: Text(alertDialogContent,
        style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal
        ),
      ),
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: white)
      ),
      actions: [
        IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.no_sim_outlined,
              color: callAndAlertDialogColor
          ),
        ),
        IconButton(
          onPressed: (){
            deleteContact(index);
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.delete, color: callAndAlertDialogColor),
        ),
      ],
    );
  }
}





