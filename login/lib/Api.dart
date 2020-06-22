import 'package:http/http.dart' as http;
import 'dart:convert';

Future loginUser(String email,String password) async{
  String url="http://192.168.1.77:8000/api/login";
  String json = "json=";
  final response = await http.post(url,
    headers: {'Content-Type':'application/x-www-form-urlencoded'},
    body: {"json":"{\"email\":\"$email\",\"password\":\"$password\",\"gettoken\":\"true\"}"}
  );
  var converDataJson = jsonDecode(response.body);
  return converDataJson;
}