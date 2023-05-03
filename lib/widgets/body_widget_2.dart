import 'package:flutter/material.dart';

import '../design_elements.dart';
import 'hover_image.dart';

class BodyWidget2 extends StatelessWidget {
  BodyWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
                width: screenWidth / 2,
                child: HoverImage(
                  hoverImagePath: "assets/images/tree-5.png",
                  imagePath: "assets/images/tree-4.png",
                ))
          ],
        ),
        Container(
          padding: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nature is not a \nplace to visit. \nIt is home.",
                style: mainheading,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Nature's beauty is our responsibility,\nLet's preserve it for future's stability.",
                style: bodyText,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 40,
                child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () {},
                    child: Text("Know More About Us", style: bodyText)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
