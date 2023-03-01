import 'package:flutter/material.dart';
import 'package:authentest_632021098/login.dart';
import 'package:authentest_632021098/auth_service.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _ResgisterState();
}

class _ResgisterState extends State<Register> {
  String groupSimple = "";
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    TextEditingController _username = TextEditingController();
    TextEditingController _telephone = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('REGISTER')),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          TextFormField(
            controller: _username,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
              return null;
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.people),
                labelText: "Name",
                hintText: "Enter Your Username"),
          ),
          TextFormField(
            controller: _telephone,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
              return null;
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                labelText: "Telephone",
                hintText: "Enter Your Telephonenumber"),
          ),
          TextFormField(
            controller: _email,
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
            controller: _password,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter text';
              }
              return null;
            },
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: "Password",
                hintText: "Enter Your Password"),
          ),
          Text("ประเภทผู้ใช้งาน"),
          RadioListTile(
            title: Text('อาจารย์'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'user 1',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
              print(groupSimple);
            },
          ),
          RadioListTile(
            title: Text('เจ้าหน้าที่'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'user 2',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
              print(groupSimple);
            },
          ),
          RadioListTile(
            title: Text('นิสิต'),
            controlAffinity: ListTileControlAffinity.platform,
            value: 'user 3',
            groupValue: groupSimple,
            onChanged: (value) {
              setState(() {
                groupSimple = value!;
              });
              print(groupSimple);
            },
          ),
          ElevatedButton(
              onPressed: () {
                AuthService.register(_email.text, _password.text).then((value) {
                  print("succes");
                  Navigator.pop(context);
                });
              },
              child: Text('Submit')),
        ],
      )),
    );
  }
}
