import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expense_list/expense_items.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList(this.registeredList, this.removeExpense, {super.key});

  final List<Expense> registeredList;
  final void Function(Expense expense) removeExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredList.length,
      itemBuilder: (cxt, index) => Dismissible(
        key: ValueKey(registeredList[index]),
        background: Container(
          
          color: Theme.of(context).colorScheme.surfaceContainer.withOpacity(1),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
          ),
          child: const Align(
              alignment: Alignment.center, child: Icon(Icons.delete)),
        ),
        onDismissed: (direction) {
          removeExpense(registeredList[index]);
        },
        child: ExpenseItems(registeredList[index]),
      ),
    );
  }
}
