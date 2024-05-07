import 'package:add_page/data_model.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  final void Function(DataModel x) expensedata;
  const AddData({
    super.key,
    required this.expensedata,
  });

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController title = TextEditingController();
  TextEditingController text = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  void dispose() {
    title.dispose();
    text.dispose();
    super.dispose();
  }

  addData() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
  }

  void _submitedExpensesdata() {
    widget.expensedata(DataModel(title: title.text, text: text.text));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: title,
                  maxLines: 1,
                  decoration: const InputDecoration(
                    hintText: 'Enter your title',
                  ),
                  validator: (value) {
                    if (title.text.isEmpty) {
                      return 'error';
                    }
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
                TextFormField(
                  controller: text,
                  decoration:
                      const InputDecoration(hintText: 'Enter your text'),
                  maxLines: 5,
                  validator: (value) {
                    if (text.text.isEmpty) {
                      return 'error';
                    }
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                    
                    },
                    child: const Text('add Data'))
              ],
            )));
  }
}
