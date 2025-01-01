// comments are new things i have learnt while making this app
import 'package:uuid/uuid.dart';
const uuid = Uuid();
enum Category { food, travel, leisure, work }// enum treats these words not exactly but as string

class Expense {
  Expense({required this.title, required this.amount,
    required this.date, required this.category }) : id = uuid.v4();//this creates a custom string id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}