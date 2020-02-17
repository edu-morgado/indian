import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController forgotPasswordNode = new TextEditingController();

  Widget emailTextFied(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(primaryColor: Colors.black),
      child: TextField(
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        controller: forgotPasswordNode,
        decoration: new InputDecoration(
          labelText: 'Email',
          focusColor: Colors.grey[300],
        ),
      ),
    );
  }

  Widget forgotPasswordButton(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          FocusScope.of(context).unfocus();
          Navigator.of(context).pop();
        },
        child: Text(
          "Enviar Email",
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Esqueci-me da palavra passe"),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.topLeft,
                child: emailTextFied(context),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: Alignment.topLeft,
                child: forgotPasswordButton(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
