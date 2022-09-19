import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/sign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var pass = TextEditingController();
  var email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(
                      (0xff6ab6cf),
                    ),
                    Color(0xff44debf),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(
          (0xff6ab6cf),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  alignment: AlignmentDirectional.topStart,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(
                          (0xff6ab6cf),
                        ),
                        Color(0xff44debf),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      child: Form(
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Label(
                                state: 'login',
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MaterialButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Forget Password ?',
                                      style: TextStyle(
                                          color: Color(0xff37ecba),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      stdout.write(email.text);
                                      stdout.write(pass.text);
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Color(0xff37ecba),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black,
                                              blurRadius: 5,
                                              spreadRadius: -4,
                                              offset: Offset(0, 3),
                                            ),
                                          ]),
                                      width: 130,
                                      height: 40,
                                      child: const Center(
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Button(
                note: 'Sign Up',
                page: Signup(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key, required this.note, required this.page})
      : super(key: key);
  final String note;
  final page;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xff37ecba),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: -5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ));
          },
          child: Center(
              child: Text(
            note.toUpperCase(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}

class Label extends StatelessWidget {
  const Label({Key? key, required this.state}) : super(key: key);
  final String state;

  @override
  Widget build(BuildContext context) {
    var pass = TextEditingController();
    var email = TextEditingController();

    return Column(
      children: [
        Text(
          state.toUpperCase(),
          style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
              color: Color(0xff37ecba)),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: -14,
              offset: Offset(0, 3),
            ),
          ]),
          child: TextFormField(
            controller: email,
            onFieldSubmitted: (String val) {
              stdout.write(val);
            },
            onChanged: (String val) {
              stdout.write(val);
            },
            autofocus: true,
            cursorColor: const Color(0xff37ecba),
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'Email Address',
              contentPadding: EdgeInsets.only(left: 10),
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Color(0xff37ecba),
              ),
              border: InputBorder.none,
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 15,
              spreadRadius: -14,
              offset: Offset(0, 3),
            ),
          ]),
          child: TextFormField(
            controller: pass,
            cursorColor: const Color(0xff37ecba),
            obscureText: true,
            onFieldSubmitted: (String val) {
              stdout.write(val);
            },
            onChanged: (String val) {
              stdout.write(val);
            },
            keyboardType: TextInputType.visiblePassword,
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: 'password',
              contentPadding: EdgeInsets.only(left: 10),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Color(0xff37ecba),
              ),
              suffixIcon: Icon(
                Icons.remove_red_eye_rounded,
                color: Color(0xff37ecba),
              ),
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
