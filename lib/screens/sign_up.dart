import 'package:ecommerce_app/screens/Home.dart';
import 'package:ecommerce_app/screens/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  bool hide = true;
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  var email;
  var pwd;

  void validation() async{
    final FormState? _form= _formkey.currentState;
    if(_form!.validate()) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email, password: pwd);
      } on PlatformException catch(e) {
        print(e.message.toString());
      }
      }
      else{
  }
  }



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
            padding: EdgeInsets.only(top: 90,left: 30),
            child: Text(
              "WELCOME",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  "Create Your Account",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  onChanged: (value){
                    setState(() {
                      email=value;
                    });
                  },
                  decoration: InputDecoration(
                      hintText: "E-mail"
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: password,
                  obscureText: hide,

                  onChanged: (value){
                    setState(() {
                    pwd=value;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        hide = !hide;
                      });
                    }, icon:hide?Icon(Icons.visibility_off): Icon(Icons.visibility)),
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: confirmpassword,
                  obscureText: hide,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
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
                      }, child: Text("Sign Up")),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account ?"),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
                    }, child: Text("Sign In"))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
