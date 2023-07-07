import 'package:flutter/material.dart';
import 'package:newflutterapp/signin.dart';
import 'package:newflutterapp/signup.dart';



class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});
 

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "  ONLINE SHOP APP ",
            style: TextStyle(fontFamily: "Audowide"),
          ),
          backgroundColor:  const Color.fromARGB(255, 201, 91, 58),
          foregroundColor:  const Color.fromARGB(255, 248, 243, 243),
        ),
        body: Container(
          
         color: Colors.orange,
          child: Center(
            
              child:  Column(mainAxisAlignment: MainAxisAlignment.center,children: [
             const  Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                   Text("Hello, Welcome",style: TextStyle(fontSize: 20,),),
                ],
              ),
                ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 207, 95, 4)), onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (_)=> const SignUpPage()))}, child:  const Text("New user ? click here ")),
                ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (_)=>SigninPage()))}, child: const  Text('Existing user click here'))
              ],)
           
          ,
        ),
      ),
    ) );
  }
}
