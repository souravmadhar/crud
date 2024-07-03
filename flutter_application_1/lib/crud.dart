import 'package:flutter/material.dart';
import 'package:flutter_application_1/update_dialog.dart';

import 'add_dialog.dart';

class Lextviewcrud extends StatefulWidget {
  const Lextviewcrud({super.key});

  @override
  State<Lextviewcrud> createState() => _CrudScreenState();
}

class _CrudScreenState extends State<Lextviewcrud> {
  var list = <String>["Red ", "Black", "Blue"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.amber,
          ),
          title: Text("Crud Screen")),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Expanded(child: Text(list[index])),
                GestureDetector(
                  child: Icon(Icons.edit),
                  onTap: () {
                    showDialog(
                            context: context,
                            builder: (context) => UpdateDialog(list[index]))
                        .then((value) {
                      list[index] = value;
                      setState(() {});
                    });
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.delete),
                  onTap: () {
                    list.removeAt(index);
                    setState(() {});
                  },
                ),
              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) => AddDialog())
              .then((value) {
            list.add(value);
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
