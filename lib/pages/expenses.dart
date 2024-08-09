import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rocket_auth/widgets/expenses_list.dart';
import 'package:rocket_auth/widgets/new_expense.dart';
import '../models/expense_model.dart';

class Expenses extends StatefulWidget {
  @override
  State<Expenses> createState() {
    return _Expenses();
  }
}

class _Expenses extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
        title: "Course",
        amount: 80.22,
        category: Category.work,
        date: DateTime.now()),
    Expense(
        title: "Food",
        amount: 80.22,
        category: Category.food,
        date: DateTime.now()),
    Expense(
        title: "Football",
        amount: 80.22,
        category: Category.leisure,
        date: DateTime.now()),
    Expense(
        title: "Vacation",
        amount: 80.22,
        category: Category.travel,
        date: DateTime.now()),
  ];

  void _openAddExpenseOverlay() {
    //wahala is done here
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Expense Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(children: [
        Text("Hello world"),
        Expanded(
          child: ExpensesList(expenses: _registeredExpense),
        )
      ]),
    );
  }
}
