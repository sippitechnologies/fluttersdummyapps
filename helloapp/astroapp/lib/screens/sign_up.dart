import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: PageBody(),
    );
  }
}

class PageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            blurRadius: 20,
            offset: Offset(0, 8),
            color: Theme.of(context).hintColor.withOpacity(0.2)),
      ]),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [FirstNameField()],
        ),
      ),
    );
  }
}

class FirstNameField extends StatefulWidget {
  @override
  _FirstNameFieldState createState() => _FirstNameFieldState();
}

class _FirstNameFieldState extends State<FirstNameField> {
  TextEditingController firstNameEditingController = TextEditingController();
  String firstName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 10, 15),
      child: Column(
        children: [
          Container(
            height: 20,
            child: Row(
              children: [
                Text(
                  "First Name*",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 15, 0, 0),
            height: 30,
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: firstNameEditingController,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.yellow)),
                      hintText: "Enter First Name"),
                  onChanged: (text) {
                    firstName = text;
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LastNameInutField extends StatefulWidget {
  @override
  _LastNameInutFieldState createState() => _LastNameInutFieldState();
}

class _LastNameInutFieldState extends State<LastNameInutField> {
  TextEditingController lastNameController = TextEditingController();
  String lastName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Column(
        children: [
          Container(
            height: 20,
            child: Row(
              children: [
                Text(
                  "Last Name*",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: Row(
                children: [
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Enter LastName",
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.yellow))),
                    controller: lastNameController,
                    onChanged: (text) {
                      setState(() {
                        lastName = text;
                      });
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
