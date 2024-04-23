import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var enteredInput = '';

  void _savedTitleInput(String inputValue) {
    enteredInput = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _savedTitleInput,
            maxLength: 10,
            decoration: const InputDecoration(label: Text('Title')),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    print(enteredInput);
                  },
                  child: const Text('Saved title'))
            ],
          )
        ],
      ),
    );
  }
}
