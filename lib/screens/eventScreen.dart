import 'package:flutter/material.dart';
import 'package:dramastation/model/event.dart';

class EventScreen extends StatelessWidget {
  const EventScreen(this.event, {super.key});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar();
  }
}
