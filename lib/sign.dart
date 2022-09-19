import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var pass = TextEditingController();

    var email = TextEditingController();
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
            mainAxisAlignment: MainAxisAlignment.center,
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
                                state: 'sign up',
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
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
                                    labelText: 'confirm password',
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
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
                                          'Sign up',
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
                              const SizedBox(
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Button(note: 'Sign in', page: LoginScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
