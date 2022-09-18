import 'package:flutter/material.dart';

class DropdownButtonScreen extends StatefulWidget {
  const DropdownButtonScreen({Key? key}) : super(key: key);

  @override
  State<DropdownButtonScreen> createState() => _DropdownButtonScreenState();
}

class _DropdownButtonScreenState extends State<DropdownButtonScreen> {
  List<String> dropdownButtonItems = ['Item 1', 'Item 2', 'Item 3'];

  String? selectedItem = 'Item 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button Screen'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: DropdownButton<String>(
            isExpanded: true,
            items: dropdownButtonItems
                .map((value) =>
                    DropdownMenuItem<String>(value: value, child: Text(value)))
                .toList(),
            value: selectedItem,
            onChanged: (value) {
              setState(() {
                selectedItem = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
