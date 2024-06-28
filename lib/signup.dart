import 'package:flutter/material.dart';




class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SignUp",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
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
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: const Text("SignUp"))
        ],
      ),
    );
  }
}
