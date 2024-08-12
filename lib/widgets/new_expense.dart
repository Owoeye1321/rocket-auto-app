import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:rocket_auth/data/expenses.dart';
import 'package:rocket_auth/models/expense_model.dart';

class NewExpense extends StatefulWidget {
  final Function(Expense expense) onAddExpense;
  NewExpense(
    this.onAddExpense, {
    super.key,
  });

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  //The following are the formal way of retrieving user inputs
  // String enteredValue = '';
  // void _setTitleInput(String inputValue) {
  //   enteredValue = inputValue;
  // }
  // The one below is the modern way of handling form inputs

  final _titleInputController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? selectedDate;
  Category? _selectedCategory = Category.food;

  //show date picker

  void _showDatePicker() async {
    final currentDate = DateTime.now();
    final firstDate =
        DateTime(currentDate.year - 1, currentDate.month, currentDate.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: firstDate,
      lastDate: currentDate,
    );
    setState(() {
      selectedDate = pickedDate;
    });
  }

  void _submitExpenseData() {
    final _enteredAmount = double.tryParse(_amountController.text);
    final _amountIsInvalid = _enteredAmount == null || _enteredAmount < 1;
    if (_titleInputController.text.trim().isEmpty ||
        _amountIsInvalid ||
        selectedDate == null) {
      //Error is displayed here
      showDialog(
        context: context,
        builder: (cxt) => AlertDialog(
          title: Text("Invalid inputs"),
          content: Text("Invalid details, kindly provide valid credentials"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(cxt);
              },
              child: Text("Okay"),
            )
          ],
        ),
      );
      return;
    }

    widget.onAddExpense(
      Expense(
        title: _titleInputController.text,
        amount: _enteredAmount,
        date: selectedDate!,
        category: _selectedCategory!,
      ),
    );
    Navigator.pop(context);
  }

  // The following function is called when a widgets is about to be destroyed
  @override
  void dispose() {
    _titleInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: _titleInputController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text("Title"),
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(100.0),
              //   ),
              // ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    prefixText: '\$ ',
                    label: Text("Amount"),
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(
                    //     Radius.circular(100.0),
                    //   ),
                    // ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(selectedDate != null
                        ? DateFormat.yMEd().format(selectedDate!)
                        : "No date seleted"),
                    IconButton(
                      onPressed: _showDatePicker,
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton(
                value: _selectedCategory,
                items: Category.values
                    .map(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Text(item.name.toUpperCase()),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  //The element below accept a context and disable the modal
                  Navigator.pop(context);
                },
                child: Text("Cancle"),
              ),
              ElevatedButton(
                onPressed: _submitExpenseData,
                child: Text("Add Expense"),
              )
            ],
          )
        ],
      ),
    );
  }
}
