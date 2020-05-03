import 'package:blocworkflow/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return buildLoginInitial(context);
          },
        ));
  }
}

Widget buildLoginInitial(BuildContext context) {
  return Container(
      alignment: Alignment.center,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              height: 60,
              width: 200,
              child: TextField(
                style: TextStyle(
                    fontFamily: 'normMed', fontWeight: FontWeight.w900),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontFamily: 'normReg',
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.black),
                  hintText: ('Username'),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              height: 60,
              width: 200,
              child: TextField(
                obscureText: true,
                style: TextStyle(
                    fontFamily: 'normMed', fontWeight: FontWeight.w900),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                      fontFamily: 'normReg',
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.black),
                  hintText: ('Password'),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 40),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.black,
              textColor: Colors.white,
              disabledColor: Colors.grey,
              disabledTextColor: Colors.black,
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
                left: 70,
                right: 70,
              ),
              splashColor: Colors.grey,
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/profile');
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ]));
}
