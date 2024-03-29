import 'package:currency_converter/currency_converter_cupertino.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main(){
  runApp(const MyCupertinoApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

// // 1. Material Design - Created by Google
// // 2. Cupertino Design - Created by Apple

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CurrrencyConverterMaterialPage(),
//     );
//   }
// }


class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
