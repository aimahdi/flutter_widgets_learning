import 'package:flutter/material.dart';

class PopupMenuScreen extends StatelessWidget {
  const PopupMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popup Menu Screen'),
      actions: [
        PopupMenuButton(itemBuilder: (context){
          return [
            PopupMenuItem(child: Text('Item 1')),
            PopupMenuItem(child: Text('Item 2')),
            PopupMenuItem(child: Text('Item 3')),
            PopupMenuItem(child: Text('Item 4')),
            PopupMenuItem(child: Text('Item 5')),
          ];
        })
      ],),
    );
  }
}
