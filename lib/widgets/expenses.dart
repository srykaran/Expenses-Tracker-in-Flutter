import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
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

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx){
      return  NewExpense(onAddExpense:_addExpense);
    });
  }
  void _addExpense(Expense expese){
    setState(() {
      _registeredExpenses.add(expese);
    });
  }



    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(onPressed:_openAddExpenseOverlay,
              icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
      children:  [

        const Text('The Chart'),
        Expanded(child: ExpensesList(expenses:_registeredExpenses),
        ),
      ],
    ),);
    }
  }