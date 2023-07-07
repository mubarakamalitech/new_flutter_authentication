import 'package:flutter/material.dart';


class DataClass extends ChangeNotifier {
  String id;
  String title;
  String description;
  String imageUrl;
  String price;
  
 

  DataClass(
      {required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.id
      });
}
