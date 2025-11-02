import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:dramastation/model/event.dart';
import 'package:google_fonts/google_fonts.dart';

class Eventtile extends StatefulWidget {
  const Eventtile(this.event, {super.key});
  final Event event;

  @override
  State<Eventtile> createState() => _EventtileState();
}

class _EventtileState extends State<Eventtile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // Background Image
              Image.asset(
                widget.event.imagePath,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              // Blurred Overlay
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      color: Colors.black.withOpacity(0.4),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Event info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.event.eventTitle.toUpperCase(),
                                  style: GoogleFonts.playfairDisplay(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                    shadows: [
                                      const Shadow(
                                        color: Colors.black54,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  widget.event.formattedDate,
                                  style: GoogleFonts.playfairDisplay(
                                    color: Colors.white70,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    shadows: const [
                                      Shadow(
                                        color: Colors.black54,
                                        blurRadius: 8,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Like button
                          IconButton(
                            onPressed: () {
                              setState(() {
                                widget.event.liked = !widget.event.liked;
                              });
                            },
                            icon: Icon(
                              widget.event.liked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: const Color.fromARGB(255, 222, 131, 27),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
