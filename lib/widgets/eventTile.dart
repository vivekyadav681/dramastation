import 'package:flutter/material.dart';
import 'package:dramastation/model/event.dart';

class Eventtile extends StatefulWidget {
  const Eventtile(this.event, {super.key});
  final Event event;
  @override
  State<Eventtile> createState() => _EventtileState();
}

class _EventtileState extends State<Eventtile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(20, 0, 0, 0),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsetsGeometry.all(5),
                child: Image.asset(
                  widget.event.imagePath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Text(widget.event.eventTitle),
              Spacer(),
              Row(
                children: [
                  Text(widget.event.formattedDate),
                  Spacer(),
                  if (widget.event.liked)
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.event.liked = false;
                        });
                      },
                      icon: Icon(Icons.favorite, color: Colors.pinkAccent),
                    )
                  else
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.event.liked = true;
                        });
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: Colors.pinkAccent,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
