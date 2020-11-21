library scoopml;

import 'package:http/http.dart' as http;
import 'dart:convert';

class ScoopML {
  String url,text;
  ScoopML(this.url,this.text);

  Future<dynamic> getPredictions() async{
    http.Response response = await http.post(url,body: {"payload":text});
    if(response.statusCode==200){
      return jsonDecode(response.body);
    }
    else{
      print("Error! statusCode ${response.statusCode}");
    }
  }
}
