// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit/app_cubit.dart';
import 'firstScreen.dart';

void main(){
  runApp(const app());
}
// ignore: camel_case_types
class  app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

// ignore: camel_case_types
class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => appcubic(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: first()
      ),
    );
  }


}
// ignore: camel_case_types



