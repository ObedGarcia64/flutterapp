import 'package:flutter/material.dart';
import '../widgets/description_place.dart';
import '../widgets/review_list.dart';
import '../../../widgets/gradient_background.dart';
import '../widgets/card_img_list.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    String DummieText = "Super Nintendo World is a themed area at Universal Studios Japan, and under construction at Universal Studios Hollywood, Universal Studios Singapore, and the upcoming Universal's Epic Universe at Universal Orlando Resort.";

    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Nintendo World", 4.5,DummieText),
            ReviewList()
          ],
        ),
        GradientBackground("Welcome to my app", 300),
        CardImageList(),
      ],
    );
  }

}