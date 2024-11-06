import 'package:flutter/material.dart';

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id,this.url,this.title);

  ImageModel.fromJson(Map<String,dynamic> parsedjson):
    id = parsedjson['id'],
    url = parsedjson['url'],
    title = parsedjson['title'];
  
}
