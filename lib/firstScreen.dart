// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app_cubit/app_cubit.dart';
// ignore: unused_import
import 'app_cubit/app_states.dart';
import 'package:first/secondScreen.dart';






// ignore: camel_case_types
class first extends StatelessWidget {
  const first({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    return BlocBuilder<appcubic,appState>(builder: (BuildContext context, dynamic state ){

      appcubic cu=BlocProvider.of<appcubic>(context);
      return Scaffold(
          backgroundColor:const Color.fromARGB(255, 2, 14, 41),
          appBar: AppBar(
            title: const Text("BMI CALCULATOR"),
            centerTitle: true,
            backgroundColor:const Color.fromARGB(66, 50, 48, 48),

          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(

                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap:(){

                              cu.genderstate(true);


                            } ,


                            child: Container(width: 160,height: 160,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(188, 53, 2, 76),
                                    borderRadius: BorderRadius.circular(20)),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.male,color: cu.c1,size: 70,),
                                    const SizedBox(height: 10,),
                                    Text("Male",style: TextStyle(color: cu.c1,fontSize: 20),)
                                  ],
                                )
                            ),

                          ),
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: GestureDetector(
                            onTap:(){
                              cu.genderstate(false);

                            } ,

                            child: Container(width: 160,height: 160,
                                decoration: BoxDecoration(
                                    color:  const Color.fromARGB(188, 53, 2, 76),
                                    borderRadius: BorderRadius.circular(20)),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.female,color: cu.c2,size: 70,),
                                    const SizedBox(height: 10,),
                                    Text("Female",style: TextStyle(color: cu.c2,fontSize: 20),)
                                  ],
                                )
                            ),

                          ),
                        ),
                      ],),

                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Expanded(
                          child: Container(width: 340,height: 160,
                            decoration: BoxDecoration(color: const Color.fromARGB(188, 53, 2, 76),borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                const SizedBox(height: 20,),
                                const Text("Height",style: TextStyle(color: Colors.white,fontSize: 20),),
                                const SizedBox(height: 10,),
                                Text("${cu.Cvalue.ceil()} cm",style: const TextStyle(color: Colors.white,fontSize: 40),),
                                Slider(min: 50,max: 250,value: cu.Cvalue,activeColor: Colors.pink,
                                    inactiveColor: const Color.fromARGB(255, 169, 169, 169),  onChanged: (double val){
                                      cu.heightstate(val);
                                    })
                              ],
                            ),),
                        )
                      ],),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(width: 160,height: 160,
                              decoration: BoxDecoration(color: const Color.fromARGB(188, 53, 2, 76),borderRadius: BorderRadius.circular(20))
                              ,child: Column(
                                children: [
                                  const SizedBox(height: 15,),
                                  const Text("Weight",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  const SizedBox(height: 10,),
                                  Text(cu.weight.toString(),style: const TextStyle(color: Colors.white,fontSize: 30),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(backgroundColor: Colors.pink , onPressed: (){
                                        if(cu.weight>20) {
                                          cu.wightstate(cu.weight-1);
                                        }
                                      }, child: const Icon(CupertinoIcons.minus)),
                                      const SizedBox(width: 15,),
                                      FloatingActionButton(backgroundColor: Colors.pink,child: const Icon(Icons.add),onPressed: (){
                                        if(cu.weight<250) {
                                          cu.wightstate(cu.weight+1);
                                        }
                                      })
                                    ],)

                                ],
                              )),
                        ),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Container(width: 160,height: 160,
                              decoration: BoxDecoration(color: const Color.fromARGB(188, 53, 2, 76),borderRadius: BorderRadius.circular(20))
                              ,child: Column(
                                children: [
                                  const SizedBox(height: 15,),
                                  const Text("Age",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  const SizedBox(height: 10,),
                                  Text(cu.age.toString(),style: const TextStyle(color: Colors.white,fontSize: 30),),
                                  const SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(backgroundColor: Colors.pink, onPressed: (){
                                        if(cu.age>6) {
                                          cu.agestate(cu.age-1);
                                        }
                                      }, child: const Icon(CupertinoIcons.minus)),
                                      const SizedBox(width: 15,),
                                      FloatingActionButton(backgroundColor: Colors.pink,child: const Icon(Icons.add),onPressed: (){

                                        if( cu.age<120) {
                                          cu.agestate(cu.age+1);
                                        }

                                      })
                                    ],)
                                ],

                              )),
                        ),
                      ],)
                  ],
                ),
              ),
            ],
          ),
          bottomSheet:
          GestureDetector(
            onTap: () {
              BMI= cu.weight/( cu.Cvalue.ceil()* cu.Cvalue.ceil()/10000);
              // ignore: unused_local_variable
              int max=(( cu.Cvalue.ceil()* cu.Cvalue.ceil()/10000)*25).floor();
              // ignore: unused_local_variable
              int min=(( cu.Cvalue.ceil()* cu.Cvalue.ceil()/10000)*18.5).ceil();
              if(BMI<15){
                com="very severe weight loss\n\n your weight must be between $min and $max";


              }
              else if(BMI<16){
                com="severe weight loss\n\n your weight must be between $min and $max";

              }
              else if(BMI<18.5){
                com="weight loss\n\n your weight must be between $min and $max";

              }
              else if(BMI<25){
                com="normal weight";

              }
              else if(BMI<30){
                com="increase in weight\n\n your weight must be between $min and $max";

              }
              else if(BMI<35){
                com="first degree obesity\n\n your weight must be between $min and $max";

              }
              else if(BMI<40){
                com="second degree obesity\n\n your weight must be between $min and $max";

              }
              else {
                com="too much obesity\n\n your weight must be between $min and $max";
              }

              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const sec()));
            },
            child: Container(height: 50,width: double.infinity,color: Colors.pink,
              child: const Center(child: Text("CALCULATE",style: TextStyle(color: Colors.white,fontSize: 20),)),),
          )
      );
    }
    );


  }
}
