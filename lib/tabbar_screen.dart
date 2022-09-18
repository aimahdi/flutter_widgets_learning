import 'package:flutter/material.dart';

class TabbarScreen extends StatelessWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: const Text('Tabbar Screen'),
        bottom: TabBar(
          tabs: [
            Tab(text: 'Tab 1',icon: Icon(Icons.home),),
            Tab(text: 'Tab 2',icon: Icon(Icons.star),),
            Tab(text: 'Tab 3',icon: Icon(Icons.person),),
          ],
        ),),
        body: TabBarView(
          children: [
            Text('Tab 1'),
            Text('Tab 2'),
            Text('Tab 3'),

          ],
        ),

      ),
    );
  }
}
