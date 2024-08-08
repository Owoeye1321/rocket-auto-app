import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/expense_model.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expenseItem;
  ExpenseItem({super.key, required this.expenseItem});
  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(expenseItem.title),
            Row(
              children: [Text('\$${expenseItem.amount.toStringAsFixed(2)}')],
            )
          ],
        ),
      ),
    );
  }
}
