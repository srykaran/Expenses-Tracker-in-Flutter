import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/cupertino.dart';

class ExpensesList extends StatelessWidget{
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount :expenses.length, itemBuilder:((ctx, index){
      return Text(expenses[index].title,);
    }));

  }
}