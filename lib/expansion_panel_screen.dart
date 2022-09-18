import 'package:flutter/material.dart';

class ExpansionPanelScreen extends StatefulWidget {
  ExpansionPanelScreen({Key? key}) : super(key: key);

  static String loremText = 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';

  @override
  State<ExpansionPanelScreen> createState() => _ExpansionPanelScreenState();
}

class _ExpansionPanelScreenState extends State<ExpansionPanelScreen> {
  final List<Item> items = [
    Item(header: 'Panel 1', body: ExpansionPanelScreen.loremText),
    Item(header: 'Panel 2', body: ExpansionPanelScreen.loremText),
    Item(header: 'Panel 3', body: ExpansionPanelScreen.loremText),
    Item(header: 'Panel 4', body: ExpansionPanelScreen.loremText),
    Item(header: 'Panel 5', body: ExpansionPanelScreen.loremText),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Panel Screen'),),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, isExpanded) {
            setState(() {
              items[index].isExpanded = !isExpanded;
            });
          },
          children: items.map((item) =>
              ExpansionPanel(
                isExpanded: item.isExpanded,
                canTapOnHeader: true,
                headerBuilder: (context, isExpanded) =>
                    Text(
                      item.header,
                      style: const TextStyle(fontSize: 20),
                    ),
                body: ListTile(
                  title: Text(item.body, style: const TextStyle(fontSize: 16),),
                ),
                //value: item.header
              )).toList(),
        ),
      ),
    );
  }
}

class Item {
  final String header;
  final String body;
  bool isExpanded;

  Item({required this.header, required this.body, this.isExpanded = false});
}