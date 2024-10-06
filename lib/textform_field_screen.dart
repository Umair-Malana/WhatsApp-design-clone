import 'package:flutter/material.dart';
import 'package:whats_app/tiktok.dart';

class LaptopScreen extends StatefulWidget {
  const LaptopScreen({super.key});

  @override
  State<LaptopScreen> createState() => _LaptopScreenState();
}

class _LaptopScreenState extends State<LaptopScreen> {
  final formKey = GlobalKey<FormState>();
  FocusNode nameNode = FocusNode();
  FocusNode emailNode = FocusNode();
  @override
  void dispose() {
    nameNode.dispose();
    emailNode.dispose();
    super.dispose();
  }

  String name = '';
  String email = '';
  bool mode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Filed'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (val) {
                  FocusScope.of(context).requestFocus(nameNode);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter name';
                  }
                },
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(nameNode),
                onChanged: (val) {
                  setState(() {
                    name = val;
                  });
                },
                onSaved: (val) {
                  setState(() {
                    name = val!;
                  });
                },
                focusNode: nameNode,
                decoration: InputDecoration(
                  hintText: 'Name',
                  label: Text('Name'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(emailNode),
                onFieldSubmitted: (val) {
                  FocusScope.of(context).requestFocus(emailNode);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter email';
                  }
                },
                onChanged: (val) {
                  setState(() {
                    email = val;
                  });
                },
                onSaved: (val) {
                  setState(() {
                    email = val!;
                  });
                },
                obscureText: true,
                focusNode: emailNode,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  label: Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Hscreen()));
                  }
                },
                child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
