// comments are new things i have learnt while making this app
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';


final formatter = DateFormat.yMd();
const uuid = Uuid();
enum Category { food, travel, leisure, work }// enum treats these words not exactly but as string

const categoryIcons ={
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({required this.title, required this.amount,
    required this.date, required this.category }) : id = uuid.v4();//this creates a custom string id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String  get formattedDate{
    return formatter.format(date);
  }
}