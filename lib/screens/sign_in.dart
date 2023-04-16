import 'package:flutter/material.dart';

import 'Home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool hide = true;
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/signup.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: Column(
              children: [
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                      hintText: "E-mail"
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: password,
                  obscureText: hide,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        hide = !hide;
                      });
                    }, icon:hide?Icon(Icons.visibility_off): Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 68)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                      }, child: Text("Sign In")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}