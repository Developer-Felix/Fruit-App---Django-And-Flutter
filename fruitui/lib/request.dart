import 'dart:convert';

import 'package:http/http.dart';

final url = Uri.parse("http://localhost:8000/fruits/");

Future<List<Fruits>> fetchFruits() async{
  
  final response = await get(url);
  if(response.statusCode==200){
    final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<Fruits>((json) => Fruits.fromMap(json)).toList(); 
  }else{
    throw "cant get posts";
  }
}


class Fruits {
  final int id;
  final String title;
  final int quantity;
  final String imgUrl;

  Fruits( this.id,this.quantity, this.title,this.imgUrl);

  factory Fruits.fromMap(Map<String, dynamic> json) {
    return Fruits(json['id'], json['title'],json['quantity'],json['imgUrl']);
  }
  factory Fruits.fromJson(Map<String, dynamic> json) {
    return Fruits(json['id'], json['title'], json['imgUrl'],json['imgUrl']);
  }

}
