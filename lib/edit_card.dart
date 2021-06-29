import 'package:camera_example/model/card_model.dart';
import 'package:flutter/material.dart';

class EditCardPage extends StatefulWidget {
  Menu args;

  EditCardPage({required this.args});

  @override
  _EditCardPageState createState() => _EditCardPageState();
}

class _EditCardPageState extends State<EditCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("edit card"),),
      body: Column(
        children: [
          Text(widget.args.expires),
          Text(widget.args.cardName),
          Text(widget.args.name),
          Text(widget.args.cardNumber.toString()),
        ],
      ),
    );
  }

}