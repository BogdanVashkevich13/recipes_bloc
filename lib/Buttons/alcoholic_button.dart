import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:page_transition/page_transition.dart';
import 'package:recipes_bloc/bloc/drink_bloc.dart';
import 'package:recipes_bloc/bloc/user_event.dart';

import '../Wigets/list_drinks.dart';

class AlcoholicButton extends StatelessWidget {
  const AlcoholicButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DrinkBloc _drinkBloc = BlocProvider.of<DrinkBloc>(context);
    return ElevatedButton(
        onPressed: () {
          _drinkBloc.add(DrinkLoadEvent());
        },
        child: const Text('Alcohol'),
    );
  }
}












//       GestureDetector(
//         onTap: () {
//           _drinkBloc.add(DrinkLoadEvent());
//         },
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Card(
//               shape: const RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(10.0))),
//               child: Image.asset('images/alcohol.png',
//                 width: 150,
//                 height: 150,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 50),
//               child: Text('Alcohol', style: new TextStyle(
//                 fontSize: 20,
//                 color: Colors.white,
//               ),),
//             ),
//           ],
//         ),
//       );
//   }
// }