import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dramastation/widgets/bannerItem.dart';

class BannerThingie extends StatelessWidget {
  const BannerThingie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
      child: CarouselSlider(
        items: [
          Banneritem(
            heading: 'Something',
            subheading: 'something about something',
            imagePath: 'assets/carouselPicOne.jpeg',
          ),
          Banneritem(
            heading: 'One thing',
            subheading: 'One thing about one thing',
            imagePath: 'assets/carouselPicTwo.jpeg',
          ),
          Banneritem(
            heading: 'Something else',
            subheading: 'Something else about something else',
            imagePath: 'assets/carouselPicThree.jpg',
          ),
        ],
        options: CarouselOptions(
          height: 200,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
        ),
      ),
    );
  }
}
