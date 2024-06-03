import 'package:contact_list/views/widgets/alert_dialog_box.dart';
import 'package:contact_list/views/widgets/contact_list.dart';
import 'package:contact_list/views/widgets/form_layout.dart';
import 'package:flutter/material.dart';
import '../../utils/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameTEController = TextEditingController();
  TextEditingController numberTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Map<String, String>> contacts = [];

  @override
  void initState() {
    super.initState();
  }
  void _addContact()
  {
    if(_formKey.currentState!.validate())
      {
        setState(() {
          contacts.add(
          {
            'name': nameTEController.text,
            'number': numberTEController.text,
          }
          );
          nameTEController.clear();
          numberTEController.clear();
        });
      }
  }
  void _deleteContact(int index)
  {
    setState(() {
      contacts.removeAt(index);
    });
  }
  void _showDialogBox(int index)
  {
    showDialog(context: context,
        builder:(context)=> AlertBoxForDeletion(
            deleteContact: _deleteContact,
            index: index,
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          FormLayout(
              formKey: _formKey,
              nameController: nameTEController,
              numberController: numberTEController,
              addContact: _addContact,
          ),
          const SizedBox(height: 10),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ContactListView(
                  items: contacts,
                  onLongPressed:_showDialogBox,
                ),
              )
          )
        ],
      ),
    );
  }
}

