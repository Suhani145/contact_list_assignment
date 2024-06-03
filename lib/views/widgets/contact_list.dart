import 'package:contact_list/utils/colors.dart';
import 'package:flutter/material.dart';

class ContactListView extends StatelessWidget {
  const ContactListView({
    super.key,
    required this.items,
    required this.onLongPressed});
  final List<Map<String, String>> items;
  final Function(int) onLongPressed;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
        itemBuilder: (context, index)
      {
        return Card(
          child: GestureDetector(
            onLongPress: ()=> onLongPressed(index),
            child: ListTile(
              title: Text(items[index]['name']!,
              style: TextStyle(
                color: nameColor,
                fontSize: 19,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5
              ),
              ),
              subtitle: Text(items[index]['number']!),
              leading: Icon(Icons.person, size: 35, color: personIconColor),
              trailing: IconButton(
                onPressed: (){},
                icon:  Icon(Icons.call, color: callAndAlertDialogColor)
              ),
              tileColor: tileColor,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: tileColor),
              ),
            ),
          ),
        );
      },
        separatorBuilder: (context, index)=> Divider(
            thickness: 3.5,color: tileColor,
        ),
    );
  }
}



























