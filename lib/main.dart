import 'package:flutter/material.dart';
import 'package:widgets_learning/appbar_screen.dart';
import 'package:widgets_learning/checkbox_screen.dart';
import 'package:widgets_learning/dropdown_button_screen.dart';
import 'package:widgets_learning/expansion_panel_screen.dart';
import 'package:widgets_learning/expansion_tile_and_list_tile_screen.dart';
import 'package:widgets_learning/focus_shortcuts_actions_screen.dart';
import 'package:widgets_learning/modal_botttom_sheet_screen.dart';
import 'package:widgets_learning/page_view_screen.dart';
import 'package:widgets_learning/popup_dialog_screen.dart';
import 'package:widgets_learning/popup_menu_screen.dart';
import 'package:widgets_learning/rating_bar_screen.dart';
import 'package:widgets_learning/tabbar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<String> widgets = ['Modal Bottom Sheet',
  'Expansion Tile & List Tile',
  'Checkbox',
  'Popup Dialog',
  'Dropdown Button',
  'Page View',
  'Expansion Panel',
  'Appbar',
  'Tabbar',
  'Popup Menu',
  'Focus Shortcut and Actions',
  'Rating Bar'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets Learning'),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  if (widgets[index] == 'Modal Bottom Sheet') {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ModalBottomSheetScreen()));
                  }else if(widgets[index] == 'Expansion Tile & List Tile'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ExpansionTileAndListTileScreen()));
                  }else if(widgets[index] == 'Checkbox'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CheckBoxScreen()));
                  }else if(widgets[index] == 'Popup Dialog'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PopupDialogScreen()));
                  }else if(widgets[index] == 'Dropdown Button'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DropdownButtonScreen()));
                  }else if(widgets[index] == 'Page View'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PageViewScreen()));
                  }else if(widgets[index] == 'Expansion Panel'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  ExpansionPanelScreen()));
                  }else if(widgets[index] == 'Appbar'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  AppBarScreen()));
                  }else if(widgets[index] == 'Tabbar'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  TabbarScreen()));
                  }else if(widgets[index] == 'Popup Menu'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  PopupMenuScreen()));
                  }else if(widgets[index] == 'Focus Shortcut and Actions'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  FocusShortcutsActionsScreen()));
                  }else if(widgets[index] == 'Rating Bar'){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>  RatingBarScreen()));
                  }
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(widgets[index], style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 16
                    ),),
                  ),
                ));
          }),
    );
  }
}
