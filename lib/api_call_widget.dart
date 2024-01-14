

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiCallWidget extends StatelessWidget {
const ApiCallWidget({ Key? key }) : super(key: key);


  Future<List<dynamic>> fetchAPI() async {
    final dio = Dio();    
    final response = await dio.get("https://jsonplaceholder.typicode.com/comments");
    return response.data;
  }


  @override
  Widget build(BuildContext context){

    return FutureBuilder<List<dynamic>>(
      future: fetchAPI(),
      builder: (BuildContext context , AsyncSnapshot<List<dynamic>> snapshot) {
        if(snapshot.hasData){
          return Text(snapshot.data.toString());

        } else {
          return const Center(child:CircularProgressIndicator());
        }

      });

    

  }
}