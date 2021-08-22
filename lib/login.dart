import 'package:flutter/material.dart';
import 'package:loginpage/docker.dart';
import 'package:loginpage/image.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LoginApp"),
        ),
        body: Stack(
          children: [
            Stack(
              fit: StackFit.expand,
              children: [
                image(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                      child: Card(
                        child: Column(
                          children: [
                            Form(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "username",
                                        labelText: "username",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: "password",
                                        labelText: "password",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyApp(),
                                  ),
                                );
                              },
                              child: Text(
                                "sign in",
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
