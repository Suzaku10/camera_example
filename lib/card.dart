import 'package:camera_example/model/card_model.dart';
import 'package:camera_example/utils/routes.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<Menu> menuDebit = [
    Menu(
      cardName: 'Visa ',
      cardNumber: 123456789,
      name: 'FIKY',
      imgSourceByString: 'ic_visa',
      expires: '10/23',
      set: 1,
    ),
    Menu(
      cardName: 'Visa ',
      cardNumber: 123456789,
      name: 'AHMAD',
      imgSourceByString: 'ic_visa',
      expires: '03/21',
      set: 0,
    ),
    Menu(
      cardName: 'Master ',
      cardNumber: 123456789,
      name: 'WAHYU',
      imgSourceByString: 'ic_master_card',
      expires: '09/21',
      set: 0,
    ),
    Menu(
      cardName: 'Visa ',
      cardNumber: 123456789,
      name: 'FAKIH',
      imgSourceByString: 'ic_visa',
      expires: '08/22',
      set: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Passing data example')),
      body: ListView.builder(
        itemBuilder: (context, index) => card(index),
        itemCount: menuDebit.length,
      ),
    );
  }

  Widget card(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          Routes.editCard,
          arguments: menuDebit[index],
        );
      },
      child: Card(
        child: Container(
          height: 100,
          child: Column(
            children: [
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(menuDebit[index].name),
                  Text(menuDebit[index].cardName),
                  Text(menuDebit[index].expires),
                  Text(menuDebit[index].cardNumber.toString()),
                ],
              )),
              Container(
                width: double.infinity,
                child: Container(
                  child: Text("edit"),
                  padding: EdgeInsets.all(8.0),
                ),
                alignment: Alignment.bottomRight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
