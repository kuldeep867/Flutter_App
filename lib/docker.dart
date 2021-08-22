import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  web() async {
    var url = Uri.http("13.233.122.46", "/cgi-bin/ab.py", {"x": cmd, "y": cn});
    var response = await http.get(url);
    print(response.body);
    // print(cmd);
    setState((){ 
    output=responce.body
    });
  }

  var cmd;

  var cn;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("LW"),
        ),
        body: Column(
          children: [
            Text("enter ur cmd : "),
            TextField(
              onChanged: (value) {
                cmd = value;
              },
              autocorrect: false,
              textInputAction: TextInputAction.send,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.print),
                  hintText: "Enter Docker Image"),
            ),
            TextField(
              onChanged: (value) {
                cn = value;
              },
              autocorrect: false,
              textInputAction: TextInputAction.send,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.print),
                  hintText: "Enter Docker Name"),
            ),
            TextButton(
              onPressed: web,
              child: Text("click me"),
            ),
          ],
        ),
      ),
    );
  }
}
