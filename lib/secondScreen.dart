// ignore: duplicate_ignore
// ignore: file_names
// ignore: camel_case_types
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit/app_cubit.dart';
import 'app_cubit/app_states.dart';
// ignore: duplicate_import
import 'app_cubit/app_cubit.dart';
// ignore: duplicate_import
import 'app_cubit/app_states.dart';
String com=" ";
// ignore: non_constant_identifier_names
double BMI=0;

// ignore: camel_case_types
class sec extends StatelessWidget {
  const sec({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder< appcubic ,appState>(
        builder: (BuildContext context, dynamic state) {
          appcubic cu=BlocProvider.of<appcubic>(context);
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 67, 2, 79),
            appBar: AppBar(centerTitle: true,title: const Text("RESULT",style: TextStyle(fontSize: 25)),backgroundColor: Colors.black12,),

            body:  ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(

                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(

                              // ignore: prefer_interpolation_to_compose_strings
                              height: 100,width: 400,decoration: BoxDecoration(color:cu.c3,borderRadius: BorderRadius.circular(20)),child:

                            Center(
                              child: Text("your height is :   ${cu.Cvalue.ceil()}",
                                  style: const TextStyle(color: Colors.white,fontSize: 30)),
                            ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(

                              // ignore: prefer_interpolation_to_compose_strings
                              height: 100,width: 400,decoration: BoxDecoration(color: cu.c3,borderRadius: BorderRadius.circular(20)),child:

                            Center(
                              child: Text("your weight is :   ${cu.weight}",
                                  style: const TextStyle(color: Colors.white,fontSize: 30)),
                            ),
                            ),
                          )
                        ],
                      )
                      ,
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(

                              // ignore: prefer_interpolation_to_compose_strings
                              height: 100,width: 400,decoration: BoxDecoration(color: cu.c3,borderRadius: BorderRadius.circular(20)),child:

                            Center(
                              child: Text("your age is :   ${cu.age}",
                                  style: const TextStyle(color: Colors.white,fontSize: 30)),
                            ),
                            ),
                          )
                        ],
                      )
                      ,
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(

                              // ignore: prefer_interpolation_to_compose_strings
                              height: 250,width: 400,decoration: BoxDecoration(color: cu.c3,borderRadius: BorderRadius.circular(20)),child:

                            Center(
                              // ignore: prefer_interpolation_to_compose_strings
                              child: Text(" BMI   =    ${BMI.ceil()}  \n\n "+com,
                                  style: const TextStyle(color: Colors.white,fontSize: 30)),
                            ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}