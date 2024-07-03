import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({super.key});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  var Textcontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
    mainAxisSize: MainAxisSize.min,
        children: [
          TextField(controller: Textcontroler),
          OutlinedButton(
              onPressed: () {
                if (Textcontroler.text.isEmpty) {
                  Fluttertoast.showToast(msg: "enter name");
                } else {
                  Navigator.of(context).pop(Textcontroler.text);
                }
              },
              child: Text("Add Name"))
        ],
      ),
    );
  }
}
