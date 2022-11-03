import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_bloc/Api/repository.dart';
import 'package:recipes_bloc/bloc/drink_bloc.dart';

import '../Wigets/bachground.dart';
import '../Buttons/buttons.dart';
import '../Colors/colors.dart';
import '../Wigets/list_drinks.dart';


class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
   final repository = Repository();
  @override
  Widget build(BuildContext context) {
      return BlocProvider(
          create: (context) => DrinkBloc(Reposytory: repository),
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title:  Text(
              'Select a category',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: ColorsSet.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: ColorsSet.red,
          ),
          backgroundColor: Colors.white,
          body: Stack(
            textDirection: TextDirection.ltr,
            children:<Widget> [
              Container(
                child: const ListDrinks(),
              ),
              Container(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: const Buttons(),
              ),
            ],
          ),
        ),
      );
  }
}


// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children:<Widget> [
// Buttons(),
// ],
// ),



// Center(
// child: Stack(
// alignment: AlignmentDirectional.center,
// children: [
// Positioned(
// child: Image.asset('images/pab.png', height: 1000,),
// ),
// ],
// ),
// ),



// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children:const <Widget> [
// Buttons(),
// Expanded(
// child: Background(),
// ),
// ],
// ),




// Scaffold(
// appBar: AppBar(
// automaticallyImplyLeading: false,
// title:  Text(
// 'Select a category',
// style: GoogleFonts.lato(
// textStyle: const TextStyle(
// color: ColorsSet.black,
// fontStyle: FontStyle.italic,
// fontSize: 25,
// fontWeight: FontWeight.bold,
// ),
// ),
// ),
// centerTitle: true,
// backgroundColor: ColorsSet.red,
// ),
// backgroundColor: Colors.black,
// body: Stack(
// textDirection: TextDirection.ltr,
// children:<Widget> [
// Container(
// child: const Background(),
// ),
// Container(
// padding: EdgeInsets.only(left: 20, top: 30),
// child: const Buttons(),
// ),
// ],
// ),