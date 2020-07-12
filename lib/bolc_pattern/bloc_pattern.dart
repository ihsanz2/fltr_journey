import 'package:fltr_journey/bolc_pattern/blocs/bloc.dart';
import 'package:flutter/material.dart';

class BlocPattern extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.all(20.0),
        // child: Text("tesssss"),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10.0),
            emailField(),
            SizedBox(height: 10.0),
            passwordField(),
            SizedBox(height: 10.0),
            submitButton(context)
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
            onChanged: (value) {
              bloc.changeEmail(value);
            },
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  borderSide: BorderSide(color: Colors.redAccent),
                ),
                hintText: "aku@example.com",
                labelText: "Email address",
                errorText: snapshot.error),
            keyboardType: TextInputType.emailAddress);
      },
    );
  }

  Widget passwordField() {
    return StreamBuilder(
      stream: bloc.password,
      builder: (context, snapshot) {
        return TextField(
          onChanged: bloc.changePassword,
          obscureText: true,
          decoration: InputDecoration(
              hintText: 'password',
              labelText: "password",
              errorText: snapshot.error),
        );
      },
    );
  }

  Widget submitButton(context) {
    return RaisedButton(
      child: Text('Login'),
      color: Colors.blue,
      onPressed: () {},
    );
  }

  final bloc = Bloc();
}
