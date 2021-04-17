import 'package:flutter/material.dart';
import '../../../widgets/star.dart';
import '../../../widgets/gradient_button.dart';

class DescriptionPlace extends StatelessWidget{

  String descriptionText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
  String name = "Lorem";
  double top_distance = 330.0;
  double stars;

   DescriptionPlace(this.name, this.stars, this.descriptionText);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final namePlace = Container(
      margin: EdgeInsets.only(
        top: top_distance,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
      name,
        style: TextStyle(
        fontSize: 26.0,
        fontWeight: FontWeight.w800,
        ),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(
      top:20.0,
      left:20.0,
      right: 20.0,
    ),
      child: Text(
        descriptionText,
            style: TextStyle(
                fontSize: 14.0,
             fontWeight: FontWeight.w400,
             color: Color(0xff56575a)
      ),
      ),
    );

    final titleStars = Row(
      children: [
        namePlace,
        Row(
          children: [
            Star(Icons.star, top_distance),
            Star(Icons.star, top_distance),
            Star(Icons.star, top_distance),
            Star(Icons.star_half, top_distance),
            Star(Icons.star_border, top_distance),

          ],
        ),
      ],
    );

    return Column(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        titleStars,
        description,
        GradientButton("Add to Wish place"),
      ],
    );
  }

}