import 'package:flutter/material.dart';

class Banneritem extends StatelessWidget {
  const Banneritem({
    super.key,
    required this.heading,
    required this.subheading,
    required this.imagePath,
  });
  final String heading;
  final String subheading;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Expanded(
        child: Row(
          children: [
            Image.asset(imagePath),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text(heading), Text(subheading)],
            ),
          ],
        ),
      ),
    );
  }
}
