import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

var formatter = DateFormat.yMd();
var uuid = Uuid();

class Event {
  Event({required this.eventTitle, required this.date, required this.imagePath})
    : liked = false,
      id = uuid.v4();

  final String id;

  final String eventTitle;
  final DateTime date;
  final String imagePath;
  bool liked;

  String get formattedDate => formatter.format(date);
}
