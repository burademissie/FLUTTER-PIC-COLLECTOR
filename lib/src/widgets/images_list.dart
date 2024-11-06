import 'package:flutter/material.dart';
import '../models/Image_models.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context){
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context,int index){
        return buildImage(images[index]);
      },
      );
  }

  Widget buildImage(ImageModel image){
    return Container(
          child: Column(
            children: [
              Padding(
              padding:EdgeInsets.only(bottom:10.0),
              child:Image.network(image.url)),
              Text(image.title)
            ],
          ),

          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border:Border.all(color: Colors.grey),
        ),
        
        );
  }
}