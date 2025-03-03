import 'package:expense_tracker/main.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItems extends StatelessWidget {
  const ExpenseItems(this.expenseItem, {super.key});

  final Expense expenseItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          children: [
            Text(expenseItem.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('Rs ${expenseItem.amount.toStringAsFixed(2)}',style: TextStyle(color: kColorScheme.onSecondaryContainer),),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expenseItem.category],color: kColorScheme.onSecondaryContainer),
                    const SizedBox(width: 8,),
                    Text(expenseItem.formattedDate,style: TextStyle(color: kColorScheme.onSecondaryContainer),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
