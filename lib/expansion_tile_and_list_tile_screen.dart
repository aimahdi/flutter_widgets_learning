import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExpansionTileAndListTileScreen extends StatelessWidget {
  const ExpansionTileAndListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Tile And List Tile'),
      ),
      body: ExpansionTile(
        title: const Text('Expand to view data'),
        children: const  [
          ListTile(
            title: Text('First'),
          ),
          ListTile(
            title: Text('Second'),
          ),
          ListTile(
            title: Text('Third'),
          )
        ],
        onExpansionChanged: (bool isExpanded){
          if (kDebugMode) {
            print(isExpanded);
          }
        },
      ),
    );
  }
}
