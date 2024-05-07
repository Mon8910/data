import 'package:add_page/add_data.dart';
import 'package:add_page/data_model.dart';
import 'package:add_page/data_show.dart';
import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> {
  

  void _saveddata(DataModel expense){
    setState(() {
      data.add(expense);
    });}
  final List<DataModel> data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => AddData(expensedata: _saveddata),
              ),
            );
          },
          icon: Icon(Icons.add,color: Colors.blue,)),
      body: DataShow(data: data),
    );
  }
}
