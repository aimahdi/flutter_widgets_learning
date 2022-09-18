import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int currentIndex = 1;
  final controller = PageController(initialPage: 1);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page View'),
        actions: [
          IconButton(
              onPressed: () {
                controller.animateToPage(currentIndex-1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          IconButton(
              onPressed: () {

                controller.animateToPage(currentIndex+1,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut);
              }, icon: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: PageView(
        //scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
          print('Current index: $index');
        },
        children: [
          Container(
            color: Colors.red,
            child: const Text('Page 1'),
          ),
          Container(
            color: Colors.blue,
            child: const Text('Page 2'),
          ),
          Container(
            color: Colors.green,
            child: const Text('Page 3'),
          )
        ],
      ),
    );
  }
}
