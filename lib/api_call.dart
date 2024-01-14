
import 'package:dio/dio.dart';

class apiCall {

  static var shared = apiCall();
  
  getInfo() async{

    final dio = Dio();

    
    final response = await dio.get("https://jsonplaceholder.typicode.com/comments");   
    print(response);

  }

}