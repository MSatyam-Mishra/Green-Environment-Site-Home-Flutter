import 'package:flutter/material.dart';
import 'package:green_shop_website_ui/design_elements.dart';

class HoverImage extends StatefulWidget {
  final String imagePath;
  final String hoverImagePath;

  HoverImage({required this.imagePath, required this.hoverImagePath});

  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: Image.asset(
        _isHovered ? widget.hoverImagePath : widget.imagePath,
        width: screenWidth / 2.2,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
