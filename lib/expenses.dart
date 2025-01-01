import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}


class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(title: 'Flutter Course',
        amount: 20.99, date: DateTime.now(),
        category: Category.work,),

    Expense(title: 'Pushpa 2',
      amount: 10.00, date: DateTime.now(),
      category: Category.leisure,),
  ];

    @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(
      children:  [

      ],
    ),);
    }
  }