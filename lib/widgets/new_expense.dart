import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  NewExpense({super.key});

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
                  children: [
                    Text("Selected date"),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  //The element below accept a context and disable the modal
                  Navigator.pop(context);
                },
                child: Text("Cancle"),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Add Expense"),
              )
            ],
          )
        ],
      ),
    );
  }
}
