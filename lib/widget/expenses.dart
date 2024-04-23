import 'package:expense_tracker/widget/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expanses extends StatefulWidget {
  const Expanses({super.key});

  @override
  State<Expanses> createState() => _ExpansesState();
}

class _ExpansesState extends State<Expanses> {
  final List<Expense> _registerExpense = [
    Expense(
        title: 'Flutter Course',
        emount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        emount: 15.50,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('example'),
          Expanded(
            child: ExpensesList(expenses: _registerExpense),
          ),
        ],
      ),
    );
  }
}
