import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, work, leisure }

class Expense {
  Expense({
    required this.title,
    required this.emount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double emount;
  final DateTime date;
  final Category category;
}
