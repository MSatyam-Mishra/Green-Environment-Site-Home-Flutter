import 'package:flutter/material.dart';

import '../design_elements.dart';
import 'hover_image.dart';

class BodyWidget3 extends StatelessWidget {
  const BodyWidget3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(top: 150),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nature doesn't need us, \nbut we need nature. \nLet's protect it.",
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
        Column(
          children: [
            Container(
                width: screenWidth / 2.2,
                child: HoverImage(
                  hoverImagePath: "assets/images/tree-2.png",
                  imagePath: "assets/images/tree.png",
                ))
          ],
        )
      ],
    );
  }
}
