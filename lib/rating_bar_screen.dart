import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarScreen extends StatelessWidget {
  const RatingBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Rating Bar Screen'),),
      body: Center(
        child: RatingBar(
          ratingWidget: RatingWidget(
            empty: Icon(Icons.star_outline, color: Colors.black12,),
            full: Icon(Icons.star, color: Colors.purple,),
            half: Icon(Icons.star_half, color: Colors.purple,)
          ),
          minRating: 0,
          maxRating: 5,
          itemCount: 5,
          direction: Axis.vertical,
          ignoreGestures: true,
          initialRating: 3.5,
          allowHalfRating: true,
          onRatingUpdate: (value){

          },
        ),
      ),
    );
  }
}
