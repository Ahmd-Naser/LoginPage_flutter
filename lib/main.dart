// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          
          
          children: [
            Container(
              
              padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 5),
              
              width: 270,
              decoration: BoxDecoration(
                color: Colors.pinkAccent[100],
                borderRadius: BorderRadius.circular(20),
              ),
              
              child: TextField(
                
                textInputAction: TextInputAction.done,
              
                decoration: InputDecoration(
                  
                  // labelText: "ahmed",
                  hintText: "Your Email",
                  labelStyle: TextStyle(
                    fontSize: 26,
              
                  ),
              
                  border: InputBorder.none,
              
                  // icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.person),
                  // suffixIcon: Icon(Icons.visibility),
              
                ),
              
              ),
            ),
        
            SizedBox(height: 20,),
        
              Container(
              padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 5),
              
              width: 270,
              decoration: BoxDecoration(
                color: Colors.pinkAccent[100],
                borderRadius: BorderRadius.circular(20),
              ),
              
              child: TextField(
                
                obscureText: true,
                textInputAction: TextInputAction.done,
              
                decoration: InputDecoration(
                  
                  // labelText: "ahmed",
                  hintText: "Password",
        
                  labelStyle: TextStyle(
                    fontSize: 26,
              
                  ),
              
                  border: InputBorder.none,
              
                  // icon: Icon(Icons.email),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_sharp)
                  // suffixIcon: Icon(Icons.visibility),
              
                ),
              
              ),
            ),
          
            SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pinkAccent[100]),
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 99 , vertical: 15)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
              child: Text("Login", style: TextStyle(fontSize: 25),),
          ),

          ],
        ),
      ),
    );
  }
}