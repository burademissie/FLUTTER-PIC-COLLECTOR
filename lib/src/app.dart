import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'models/Image_models.dart';
import 'dart:convert';
import 'widgets/images_list.dart';

class App extends StatefulWidget {
    createState(){
      return AppState();
    }
}


class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images=[] ;

    void fetchImage() async{
      counter++;
      var response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
      var imagemodel = ImageModel.fromJson(json.decode(response.body));
      setState(() {
      images.add(imagemodel);
        
      });
    }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home:Scaffold(
    appBar: AppBar(
      title: Text('HABESHA CODE'),
    ),
    body: ImageList(images),
    
    floatingActionButton: FloatingActionButton(
      
      onPressed:fetchImage ,

      child: Icon(Icons.add_a_photo_rounded))
    ),
  );
  

  }
}