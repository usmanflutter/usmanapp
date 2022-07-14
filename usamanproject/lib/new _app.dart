// // ignore_for_file: file_names, prefer_const_constructors, avoid_types_as_parameter_names, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:usamanproject/login.dart';

// import 'drawer.dart';

// class Catalog extends StatefulWidget {
//  dynamic email;
//  dynamic name;
//    Catalog({key, this.email,this.name}) : super(key: key);
//   @override
//   State<Catalog> createState() => _CatalogState();
// }

// class _CatalogState extends State<Catalog> {
//   TextEditingController _emailcontroller = TextEditingController();
//     TextEditingController _namecontroller = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Usman Apps"),
//          actions: <Widget>[
//     IconButton(
//       icon: Icon(
//         Icons.logout,
//         color: Colors.white,
//       ),
//       onPressed: () {
//      Navigator.of(context).pushAndRemoveUntil(
//                       MaterialPageRoute(builder: (context) {
//                     return LoginPage();
//                   }), ModalRoute.withName("/login"));
//       },
//     )
//   ],
//       ),
//       body: Center(
//         child: Column(
//           children: 
//             [
//                Text("Welcome",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.lightBlue)),
//               Text(
//                 widget.name
//               ),
              
//               TextField(
         
//               decoration: InputDecoration(
//                 labelText: "Enter",
//                 hintText: "Any thing",
//               ),
//             ),
//           ],
//         ),
//       ),
//       drawer: MyDrawer(email: widget.email,name: widget.name,)
//     );
//   }
// }
