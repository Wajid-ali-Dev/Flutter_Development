import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFromField extends StatelessWidget {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text(
            'Text from field'.toUpperCase(),
            style: TextStyle(
              letterSpacing: 6,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              color: Colors.white70,
              borderRadius: BorderRadius.circular(30)),
          height: 350,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.text,
                controller: email,
                decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.blue,
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
              Container(
                height: 30,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: password,
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    prefixIcon: Icon(
                      Icons.key,
                      color: Colors.blue,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue, width: 2))),
              ),
              SizedBox(
                height: 60,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue)),
                  onPressed: () {
                    String username = email.text.toString();
                    String passwordd = password.text;
                    print("Email: $email, Password: $password");
                  },
                  child: Text(
                    "login".toUpperCase(),
                    style: TextStyle(color: Colors.white70),
                  ))
            ],
          ),
        )));
  }
}
