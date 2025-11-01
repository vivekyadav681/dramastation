import 'package:flutter/material.dart';

class BannerThingie extends StatelessWidget {
  const BannerThingie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
    );
  }
}
