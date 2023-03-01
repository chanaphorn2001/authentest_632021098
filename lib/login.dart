import 'package:flutter/material.dart';
import 'package:authentest_632021098/register.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('LOGIN')),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            TextFormField(
              controller: email,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Email",
                  hintText: "Enter Your Email"),
            ),
            TextFormField(
              controller: password,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter text';
                }
                return null;
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  labelText: "Password",
                  hintText: "Enter Your Password"),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Login')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text('Register'))
          ],
        ),
      ),
    );
  }
}
