import 'package:flutter/material.dart';

class AddView extends StatefulWidget {
  AddView({Key? key}) : super(key: key);

  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  List<String> coins = [
    'bitcoin',
    'tether',
    'etherium',
  ];
  String? dropdownValue = 'bitcoin';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: dropdownValue,
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coin Amount',
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.4,
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
            ),
            child: MaterialButton(
              onPressed: () async {
                // TODO: Add Button
                Navigator.of(context).pop();
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
