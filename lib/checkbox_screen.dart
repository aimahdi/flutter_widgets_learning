import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool isChecked = true;
  bool isListTileChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CheckBox Screen'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Colors.yellow
            ),
            child: Checkbox(
              value: isChecked,
              activeColor: Colors.blue,
              //checkColor: Colors.red,
              hoverColor: Colors.green,
              onChanged: (checkStatus){
                setState(() {
                  isChecked = checkStatus!;
                });
              },
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.yellow
            ),
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Checkbox title'),
              subtitle: const Text('this is a subtitle'),
              value: isListTileChecked,
              activeColor: Colors.blue,
              //checkColor: Colors.red,
              onChanged: (checkStatus){
                setState(() {
                  isListTileChecked = checkStatus!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
