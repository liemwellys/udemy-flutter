import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  const NewTransaction({Key key, this.addTx}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    // use widget to access method in different class
    widget.addTx(
      enteredTitle,
      enteredAmount,
    );

    // directly close modal bottom sheet after submit data
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: const TextInputType.numberWithOptions(
                signed: false,
                decimal: true,
              ),
              onSubmitted: (_) => submitData(),
              // onChanged: (val) => amountInput = val,
            ),
            SizedBox(
              height: 70,
              child: Row(
                children: <Widget>[
                  const Text('No Date Chosen!'),
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    onPressed: null,
                    child: const Text(
                      'Choose Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: submitData,
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: const Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
