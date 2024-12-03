import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Login Screen")),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 80,
            width: 300,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60.0,
            ),
            child: SizedBox(
              height: 50,
              width: 300,
              child: TextFormField(
                controller: _username,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: SizedBox(
              height: 60,
              width: 300,
              child: TextFormField(
                controller: _password,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ElevatedButton(
              onPressed: () {
                if (_username == _password) {}
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
