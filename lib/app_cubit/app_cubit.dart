import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_states.dart';

// ignore: camel_case_types
class appcubic extends Cubit<appState>{
  appcubic() : super(initialappState());
  Color c1=Colors.white,c2=Colors.white,c3=Colors.black;
  // ignore: non_constant_identifier_names
  double Cvalue=100;
  int age=21;
  int weight=60;
  bool? ismale;
  void genderstate(bool value){
    if(value){
      c1=Colors.blue;
      c2=Colors.white;
      c3=Colors.blue;
    }
    else{
      c2=const Color.fromARGB(255, 225, 94, 138);
      c1=Colors.white;
      c3=const Color.fromARGB(255, 214, 126, 155);
    }
    emit(genderState());
  }
  void heightstate(double value){
    Cvalue=value;
    emit(heightState());
  }
  void wightstate(int value){
    weight=value;
    emit(wightState());
  }
  void agestate(int value){
    age=value;
    emit(ageState());
  }
}