import 'package:flutter/material.dart';
import 'package:flutterfire_cryptowallet/net/flutterfire.dart';

class AddView extends StatefulWidget {
  AddView({Key? key}) : super(key: key);

  @override
  _AddViewState createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  List<String> coins = [
    'bitcoin',
    'tether',
    'ethereum',
  ];
  String dropdownValue = 'bitcoin';
  TextEditingController _amountController = TextEditingController();

  // Created padding element
  SizedBox _padding() => SizedBox(
        height: MediaQuery.of(context).size.height /
            ((MediaQuery.of(context).orientation == Orientation.portrait
                ? 35
                : 15)),
      );

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
                dropdownValue = value!;
              });
            },
            items: coins.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          _padding(),
          Container(
            width: MediaQuery.of(context).size.width /
                ((MediaQuery.of(context).orientation == Orientation.portrait
                    ? 1.4
                    : 3)),
            child: TextFormField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Coin Amount',
              ),
            ),
          ),
          _padding(),
          Container(
            width: MediaQuery.of(context).size.width /
                ((MediaQuery.of(context).orientation == Orientation.portrait
                    ? 1.4
                    : 3)),
            height: 45.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.blueAccent,
            ),
            child: MaterialButton(
              onPressed: () async {
                addCoin(dropdownValue, _amountController.text);
                Navigator.of(context).pop();
              },
              child: Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
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
