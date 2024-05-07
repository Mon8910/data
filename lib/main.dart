import 'package:add_page/add_data.dart';
import 'package:add_page/data_show.dart';
import 'package:add_page/show_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    home:Show() ,
   );
  }

}