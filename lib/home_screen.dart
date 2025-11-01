import 'package:dramastation/widgets/eventTile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dramastation/model/event_list.dart';
import 'package:dramastation/widgets/banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Text(
            'Drama-station',
            style: GoogleFonts.playfairDisplay(
              fontSize: 18,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          BannerThingie(),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: events.length,
              itemBuilder: (context, index) => Eventtile(events[index]),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                child: Column(
                  children: [
                    Text('Highlighted event'),

                    Row(
                      children: [
                        Icon(Icons.book),
                        Spacer(),
                        Text('check this out'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'home',
            icon: Icon(Icons.home_outlined, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            label: 'liked',
            icon: Icon(Icons.favorite_border, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            label: 'your pics',
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.grey),
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: Icon(Icons.person_outline_outlined, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
