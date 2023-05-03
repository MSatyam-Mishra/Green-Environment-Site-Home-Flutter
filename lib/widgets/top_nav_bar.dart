import 'package:flutter/material.dart';

import '../design_elements.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: menuButtonStyle,
          onPressed: () {},
          child: Text(
            "plant",
            style: logoHeading,
          ),
        ),
        Row(
          children: [
            TextButton(
              child: Text(
                "Mission",
                style: menuStyle,
              ),
              onPressed: () {},
              style: menuHoverButtonStyle,
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              child: Text(
                "News",
                style: menuStyle,
              ),
              onPressed: () {},
              style: menuHoverButtonStyle,
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              child: Text(
                "Trending",
                style: menuStyle,
              ),
              onPressed: () {},
              style: menuHoverButtonStyle,
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              child: Text(
                "About Us",
                style: menuStyle,
              ),
              onPressed: () {},
              style: menuHoverButtonStyle,
            ),
            SizedBox(
              width: 20,
            ),
            TextButton(
              child: Text(
                "Contact Us",
                style: menuStyle,
              ),
              onPressed: () {},
              style: menuHoverButtonStyle,
            ),
          ],
        ),
        Container(
          width: 100,
          height: 40,
          child: ElevatedButton(
              child: Text(
                "Login",
                style: bodyText,
              ),
              onPressed: () {},
              style: buttonStyle),
        )
      ],
    );
  }
}
