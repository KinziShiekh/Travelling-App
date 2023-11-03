import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:all_of_us_are_dead1/model/data_model.dart';

class DataServices {
  String baseUrl = 'http://mark.bslmeiyu.com/api';

  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/getplaces';
    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (res.statusCode == 2) {
        List<dynamic> data = json.decode(res.body);
        print(List);
        List<DataModel> dataList = data.map((e) => DataModel.fromJson(e)).toList();
        return dataList;
      } else {
        throw Exception('Failed to load data from the server');
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return<DataModel>[];
    }
  }
}
