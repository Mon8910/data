import 'package:add_page/data_model.dart';
import 'package:flutter/material.dart';

class DataShow extends StatelessWidget{
  const DataShow({super.key, required this.data});
  final List<DataModel>data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: data.length,itemBuilder: (ctx,index){

      return Container(
        child:Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20
      ),
      child:Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data[index].title,
        style: Theme.of(context).textTheme.titleLarge,),
        const SizedBox(height: 5,),
        Text(data[index].text)
      ],),
    ),
   ) 
      );

    });
  }

}

class DataShowItem extends StatelessWidget{
  const DataShowItem({super.key, required this.x,});
  final DataModel x;

  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20
      ),
      child:Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(x.title,
        style: Theme.of(context).textTheme.titleLarge,),
        const SizedBox(height: 5,),
        Text(x.text)
      ],),
    ),
   ) ; 
  }

}