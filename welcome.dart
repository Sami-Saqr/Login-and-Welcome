import 'package:flutter/material.dart';
import 'package:test/sign-up.dart';


class WelcomPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Welcome Back", style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
                SizedBox(height: 1),
                Text("Enter your credential to login", style: TextStyle(color: Colors.black,fontSize: 16)),
                SizedBox(height: 80),
                TextField(
                  style: TextStyle(height: 2.5),
                  controller: usernameController,
                  decoration: InputDecoration(
                    
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(17), borderSide: BorderSide.none,),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  style: TextStyle(height: 2.5),
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(17), borderSide: BorderSide.none),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    minimumSize: Size(double.infinity, 70),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                  child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24)),
                ),
                SizedBox(height: 90),
                TextButton(onPressed: () {}, child: Text("Forgot password?", style: TextStyle(color: Colors.purple,fontSize: 18))),
                SizedBox(height: 90),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?",style: TextStyle(fontSize: 15),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                      },
                      child: Text("Sign Up", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
