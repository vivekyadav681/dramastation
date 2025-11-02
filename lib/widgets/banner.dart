import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dramastation/widgets/bannerItem.dart';

class BannerThingie extends StatelessWidget {
  const BannerThingie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          Banneritem(
            heading: 'Something',
            subheading: 'something about something',
            imagePath: 'assets/introImage1.jpeg',
          ),
          Banneritem(
            heading: 'One thing',
            subheading: 'One thing about one thing',
            imagePath: 'assets/introImage2.jpeg',
          ),
          Banneritem(
            heading: 'Something else',
            subheading: 'Something else about something else',
            imagePath: 'assets/introImage3.jpeg',
          ),
        ],
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
    );
  }
}
