import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UpdateDialog extends StatefulWidget {
  final String text;
  const UpdateDialog(this.text, {super.key});

  @override
  State<UpdateDialog> createState() => _UpdateDialogState();
}

class _UpdateDialogState extends State<UpdateDialog> {
  var Textcontroler = TextEditingController();
  @override
  void initState() {
    super.initState();
    Textcontroler.text = widget.text;
  }

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
