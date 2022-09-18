import 'package:flutter/material.dart';

class ModalBottomSheetScreen extends StatelessWidget {
  const ModalBottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Modal Bottom Sheet'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Modal BottomSheet'),
          onPressed: () async {
            await showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text('Second'),
                      text('First'),
                      text('Third'),
                      text('Fourth'),
                      text('Fifth'),
                    ],
                  );
                },
                backgroundColor: Colors.blue,
                elevation: 8,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                isDismissible: true);
          },
        ),
      ),
    );
  }


  Widget text(String text) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Text(text),
    );
  }
}
