import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expenseItem;
  ExpenseItem({super.key, required this.expenseItem});
  @override
  Widget build(context) {
    return Card(
      child: Text(expenseItem.title),
    );
  }
}
