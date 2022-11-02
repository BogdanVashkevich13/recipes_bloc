// import 'package:flutter/material.dart';
// import 'package:recipes_bloc/Api/repository.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import '../Api/drink.dart';
//
// class DrinkDetails extends StatefulWidget {
//   final String id;
//   final String drinkName;
//   const DrinkDetails({super.key, required this.id, required this.drinkName});
//   _DrinkDetailsState createState() => _DrinkDetailsState();
// }
//
// class _DrinkDetailsState extends State<DrinkDetails> {
//
//   Future<Drink> _getDrinkDetails() async {
//     return Repository().getDrinkDetails();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('${widget.drinkName}'),
//       ),
//       body: FutureBuilder<Drink>(
//         future: _getDrinkDetails(),
//         builder: (context, snapshot) {
//           print(snapshot.data);
//           if (!snapshot.hasData) return const Center(
//               child: CircularProgressIndicator()
//           );
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
//                   child: ClipRRect(
//                     borderRadius: new BorderRadius.circular(8.0),
//                     child: new CachedNetworkImage(
//                       imageUrl: snapshot.data!.strDrinkThumb,
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 4,
//                 child: new SingleChildScrollView(
//                   child: Container(
//                     margin: const EdgeInsets.fromLTRB(25, 0, 25, 0),
//                     child: new Text(
//                       snapshot.data!.strInstructions,
//                       textAlign: TextAlign.justify,
//                       style: new TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }