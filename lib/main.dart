import 'package:flutter/material.dart';
import 'package:lista/api_call_widget.dart';

void main() {
  runApp(const Main());
}


class Main extends StatelessWidget {
const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My List",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true
      ),

      home:Scaffold(
          appBar: AppBar(
          title: Text("Welcome"),
          elevation: 5,
          ),

          body: ApiCallWidget(),
      ),


    );


  }


}