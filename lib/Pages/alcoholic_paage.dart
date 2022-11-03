import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_bloc/Wigets/list_drinks.dart';

class AlcoholicPage extends StatelessWidget {
  const AlcoholicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Alcohol'),
      ),
      body: Column(
        children:const <Widget> [
          ListDrinks(),
        ],
      ),
    );
  }
}
