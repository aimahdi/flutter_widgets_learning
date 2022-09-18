import 'package:flutter/material.dart';

class PopupDialogScreen extends StatelessWidget {
  const PopupDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Popup Dialog Screen'),),
      body: ElevatedButton(
        child: const Text('Open Popup Dialog'),
        onPressed: (){
          showDialog(context: context,
              barrierDismissible: false,
              builder: (context){
            return AlertDialog(

              actions: [
                TextButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text('Cancel')),
                TextButton(onPressed: ()=>Navigator.of(context).pop(), child: const Text('Ok')),
              ],
              title: const Text('Alert Dialog Title'),
              content: const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
            );
          });
        },
      ),
    );
  }
}
