import 'package:flutter/material.dart';
import 'package:calculater_2digit/splash_screen.dart';
void main(){
  runApp(Appppp());
}

class Appppp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ayush",
      theme: ThemeData(
          primarySwatch: Colors.lightBlue
      ),
      home: Splash_Screen(),
    );
  }
}

class Calculation_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Clalation_state();
}

class Clalation_state extends State<Calculation_Page>{
  var number_1=TextEditingController();
  var number_2=TextEditingController();
  var resut=" ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Calculate here"),
      ),
      body: Container(
        color: Colors.purpleAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(21),
                  child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      controller: number_1,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 3,
                              )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:const BorderSide(
                                  color: Colors.lightGreen,
                                  width: 3
                              ),
                              borderRadius: BorderRadius.circular(12)
                          )
                      )
                  ),
                ),
              ),
              Container(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      obscuringCharacter: "*",
                      controller: number_2,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.lightGreen,
                                width: 3
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:  const BorderSide(
                                  color: Colors.white,
                                  width: 4
                              ),
                              borderRadius: BorderRadius.circular(12)
                          )
                      ),
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed:(){
                      var no_1=int.parse(number_1.text.toString());
                      var no2= int.parse(number_2.text.toString());
                      var add=no_1+no2;
                      resut="the sum of numbers is $add";
                      setState(() {
                      });
                    },
                        child: const Text("Add")
                    ),
                    ElevatedButton(onPressed:(){
                      var no1=int.parse(number_1.text.toString());
                      var no2=int.parse(number_2.text.toString());
                      var sub=no1 - no2;
                      resut="to substraction of number is $sub";
                      setState(() {
                      });
                    },
                        child: const Text("sub")
                    ),
                    ElevatedButton(onPressed:(){
                      var no1=int.parse(number_1.text.toString());
                      var no2=int.parse(number_2.text.toString());
                      var mul=no1*no2;
                      resut="the multiplication of numbers is $mul";
                      setState(() {

                      });

                    },
                        child: const Text("mul")
                    ),
                    ElevatedButton(onPressed:(){
                      var no1=int.parse(number_1.text.toString());
                      var no2=int.parse(number_2.text.toString());
                      var div=no1/no2;
                      resut="The division of numbers is ${div.toStringAsFixed(2)}";
                      setState(() {

                      });
                    },
                        child: const Text("divide")
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(21.0),
                child:   Text(resut,style:const  TextStyle(fontSize: 25,color: Colors.white),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
