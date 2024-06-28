import 'package:flutter/material.dart';
import 'package:login_project/forgot_pwd.dart';
import 'package:login_project/signup.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                label: Text("Email"),
                hintText: "test@gmail.com",
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
                filled: true,
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                label: Text("Password"),
                hintStyle: TextStyle(color: Colors.white),
                fillColor: Colors.grey,
                filled: true,
                suffixIcon: Icon(Icons.remove_red_eye),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Login")),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpView()));
              },
              child: Text("Dont have an account? Signup"))
        ],
      ),
    );
  }
}
