import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '100Days of FLutter',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Day1(),
    );
  }
}

class Day1 extends StatefulWidget {
  const Day1({Key key}) : super(key: key);

  @override
  _Day1State createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  bool showPassWord;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showPassWord = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('Day 1'),
      ),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),

                //USERNAME FIELD

                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: " Enter User name",
                      labelText: "User name",
                      alignLabelWithHint: false,
                      filled: true,
                    ),
                    keyboardType: TextInputType.text,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //Email TEXTFIELD

                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        labelText: "email",
                        alignLabelWithHint: false,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        suffixIcon: Icon(Icons.email)),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //PASSWORD
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    obscureText: showPassWord,
                    decoration: InputDecoration(
                      hintText: "Password",
                      labelText: "password",
                      alignLabelWithHint: false,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          showPassWord
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            showPassWord = !showPassWord;
                          });
                        },
                      ),
                    ),
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                //PHONE NUMBER FIELD
                Container(
                  margin: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: " phone number",
                        alignLabelWithHint: false,
                        filled: true,
                        prefixText: "+234",
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1),
                        ),
                        prefixIcon: Icon(Icons.phone)),
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.done,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
