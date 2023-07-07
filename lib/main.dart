import 'package:flutter/material.dart';
import 'package:newflutterapp/authenticate.dart';
import 'package:newflutterapp/merchandise.dart';

import 'package:newflutterapp/splash.dart';
import 'package:provider/provider.dart';

  void main() => runApp(
    
   
     const  MyApp());
class   MyApp extends StatelessWidget{
 const MyApp({super.key})  ;

@override
  Widget build(BuildContext context)
{
return   MultiProvider(
  providers: [ChangeNotifierProvider(create:(_) => Products(),), ChangeNotifierProvider(create:(_)=>Authenticate())],
              
  
  child: const  MaterialApp(

            
    home:   Mainscreen(),
  debugShowCheckedModeBanner: false,
  ),
);

}
}