// ignore_for_file: sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'overview.dart';

class SignUpPage extends StatelessWidget {
  final String email = "";
   final String password = "";
  final  number = "";
 final  String fname = '';
 final  String lname = '';
  final date = "";

  const  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          " ",
          style: TextStyle(
            fontFamily: "Audowide",
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.deepOrange,
          Colors.deepOrangeAccent,
          Colors.orange
        ])),
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          const Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "signup",
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) => {email },
                  decoration: const InputDecoration(
                      labelText: "firstname", hintText: "firstname"),
                ),
              ),
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) => {password},
                  decoration: const InputDecoration(
                    hintText: "Lastname",
                    labelText: "Lastname",
                  ),
                ),
              ),

              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.name,
                  onChanged: (value) => {value = number},
                  decoration:  const InputDecoration(
                      labelText: "New Password",
                      hintText: "Enter a new password"),
                ),
              ),

              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) => {value = password},
                  decoration: const InputDecoration(
                      labelText: "Confirm password",
                      hintText: "Confirm password"),
                ),
              ),
              SizedBox(
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (value) => {value = number},
                  decoration:  const InputDecoration(
                      labelText: "Telephone", hintText: "Telephone"),
                ),
              ),
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () => {
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>const OverwiewScreen()))
                    },
                    child: const Text(
                      "Submit",
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              
              Container(
                child: Column(children: [
                  GestureDetector(
                    child: const Text("signup with google instead?"),
                    onTap: () => {
                  
                    },
                  ),
                  const Padding(padding: EdgeInsets.all(10.0)),

                 Container(
                  height: 30,
                  width: 30,
                  child: Image.network("https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=30&auto=format&w=754&h=754&fit=crop&dpr=2"))
                ]),
              )
             
            ],
          )
        ]),
      ),
    );
  }
}
