import 'package:flutter_bloc_training/Models/APIResultModel.dart';
import 'package:flutter_bloc_training/api/HttpManager.dart';

///This class will contain all end-points and methods used to get data from an API
class API{
  ///USER APIs
  static const String LOGIN = "/user/login";



  ///Authentication APIs
  static Future<APIResultModel> login(dynamic parameters) async {
    print(parameters);
    return APIResultModel.fromResponse(
        response: await HttpManager.post(url: LOGIN, body: parameters),
        data: null);
  }


}