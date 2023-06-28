// Purpose: This widget displays the list of expenses

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list.dart/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  // this is a list of expenses that we want to display imported from expenses.dart
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    // Use ListView.builder() to build a list of widgets based on the length of the expenses list.
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenses[index]),
    );
  }
}
