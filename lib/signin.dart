import 'package:flutter/material.dart';
import 'package:newflutterapp/authenticate.dart';
import 'package:newflutterapp/signup.dart';
import 'overview.dart';
import 'package:provider/provider.dart';

class SigninPage extends StatelessWidget {
  SigninPage({super.key});
  final  TextEditingController  emailController =TextEditingController();
  final  TextEditingController passwordControler =TextEditingController();

 
   

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<Authenticate>(context);

    return Scaffold(
      appBar: AppBar(
        //foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          " ",
          style: TextStyle(
            fontFamily: "Audowide",
          ),
        ),
      ),
      body: SizedBox(
        height: 720,
        child: Container(
          
          
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.deepOrange,
            Colors.deepOrangeAccent,
            Colors.orange
          ])),
          child:SingleChildScrollView(child: Column(children: [
            const SizedBox(
            
           height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    //height: ,
      
                    child: TextField(
                      controller: emailController,
                     // keyboardType: TextInputType.emailAddress,
                      onChanged: (_) => {},
                      decoration: const InputDecoration(
                          labelText: "Email", hintText: "Email"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    //height: 65,
                    child: TextField(
                      controller: passwordControler,
                     // keyboardType: TextInputType.visiblePassword,
                      onChanged: (_) => {},
                      decoration: const InputDecoration(
                        hintText: "password",
                        labelText: "password",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  
                  
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: ElevatedButton(
                      onPressed: ()  {
                         final email=emailController.text;
                         final password=passwordControler.text;
                        authProvider.login(email, password)
                            .then((_) => {
                              
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const OverwiewScreen(),
                                      ))
                                })
                            .catchError((error) =>
                                {showDialog(context: context, builder: (context)=> AlertDialog(title: const Text("incorrect email or password"),actions: [TextButton(onPressed: ()=>{Navigator.of(context).pop()}, child: const Text("ok"))],))});
                      },
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Login",
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent),
                    ),
                  ),
                ),
                const SizedBox(
                //  height: 50,
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  
                  child: Column(children: [
                    GestureDetector(
                      child: const Text("forgot password?"),
                      onTap: () => {},
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                          GestureDetector(
                            child: const Text("Don't have an account? "),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()))
                            },
                          ),
                        
                        GestureDetector( child: const Text("Sign up",style: TextStyle(color: Colors.white),),onTap: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpPage()))},)
                      ],
                    ),
                    const Padding(padding: EdgeInsets.all(10.0)),
                    SizedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            foregroundColor:
                                const Color.fromARGB(255, 21, 20, 20)),
      
                        onPressed: () => {},
                        // ignore: sized_box_for_whitespace
                        child: Column(children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.network(
                                "https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg?ixlib=rb-1.1.0&q=30&auto=format&w=754&h=754&fit=crop&dpr=2"),
                          ),
                          const Text("Sign in with google instead"),
                        ]),
                      ),
                    )
                  ]),
                )
              ],
            )
          ]),
        ),
          ),
      ) );
  }
}
