import 'package:flutter_bloc_training/Configurations/Application.dart';
import 'package:http/http.dart' as http;



class HttpManager {
  static const String BaseUrl = 'https://****.com/api';

  static Map<String, String> getHeader() {
    return {
      'Authorization': 'Bearer ${Application.accessToken}',
    };
  }

  ///POST Method
  static Future<http.Response> post({String url, Map<String, dynamic> body}) async {
    try{
      final response = await http.post(BaseUrl+url, headers: getHeader(), body: body);
      print('Response of posting to ${BaseUrl+url}:\n ${response.body}');
      return response;
    }catch(error){
      print('Error in ${BaseUrl+url}:\n $error');
      return null;
    }
  }

  ///GET Method
  static Future<http.Response> get({String url}) async {
    try{
      final response = await http.get(BaseUrl+url, headers: getHeader());
      print('Response of getting ${BaseUrl+url}:\n ${response.body}');
      return response;
    }catch(error){
      print('Error in getting ${BaseUrl+url}:\n $error');
      return null;
    }
  }

}
