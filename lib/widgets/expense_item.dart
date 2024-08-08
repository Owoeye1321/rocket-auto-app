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
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${expenseItem.amount.toStringAsFixed(2)}'),
                Spacer(), //this spacer could be used in place of the main axis alignment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Text(expenseItem.category.name),
                    Icon(Icons.alarm),
                    SizedBox(width: 8),
                    Text(expenseItem.formattedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
