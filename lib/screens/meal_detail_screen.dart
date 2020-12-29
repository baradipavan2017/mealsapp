import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail';
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar'),
      ),
      body: Center(
        child: Text('the meal - $mealId',style: TextStyle(fontSize: 20,color: Colors.black),),
      ),
    );
  }
}
