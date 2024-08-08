import 'package:flutter/material.dart';
import 'package:rocket_auth/models/expense_model.dart';
import 'package:rocket_auth/widgets/expense_item.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  ExpensesList({required this.expenses, super.key});
  @override
  Widget build(BuildContext context) {
    //This list view is used because it's automatically scrollable
    //IF the length of the widget array is not known, the builder helps loads the widgets only when they are available and needed
    //this helps to avoid redundancy
    //itemCount determine the amount of the widget that should be rendered
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) =>
          ExpenseItem(expenseItem: expenses[index]),
    );
  }
}
