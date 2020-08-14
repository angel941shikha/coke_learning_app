import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>{
bool _checkBoxVal=true;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding:false ,
        body: new Stack(fit: StackFit.expand,
            children: <Widget>[
          new Image(
            image: new AssetImage('images/login/background.jpg'),
            fit: BoxFit.cover,
          ),
          Expanded(
            child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/login/logo.png',
height: 250.0,
                    width: 150.0,
                  ),
                  new Form(
                      child: Theme(
                        data: new ThemeData(
                          brightness: Brightness.dark,
                          primarySwatch: Colors.orange,
                          inputDecorationTheme: new InputDecorationTheme(
                              labelStyle:
                              new TextStyle(color: Colors.white, fontSize: 20.0)),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(40.0),
                          child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.mail),
                                    labelText: "Employee ID",
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                new TextFormField(
                                  decoration: new InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    suffixIcon: Icon(Icons.remove_red_eye,),
                                    labelText: "Password",
                                  ),

                                  keyboardType: TextInputType.text,
                                  obscureText: true,
                                ),
                                Row(
                                  children: [
                                    new Text('Remember Password',style:TextStyle(color:Colors.white)),
                                    Checkbox(
                                      hoverColor: Colors.white,
                                      onChanged: (bool value)
                                      {
                                        setState(()=>this._checkBoxVal=value);
                                      },
                                      value: this._checkBoxVal,
                                    ),
                                    new Text('Forget Password',style:TextStyle(color:Colors.white,)),

                                  ],
                                ),
                                new MaterialButton(
                                  height: 20.0,
                                  minWidth: 40.0,
                                  textColor: Colors.white,
                                  child: new Image.asset('images/login/login-btn.png',
                                    height: 210.0,
                                    width: 105.0,
                                  ),
                                  onPressed: () => {},
                                  splashColor: Colors.red,
                                )
                              ]),
                        ),
                      ))
                ]),
          )
        ]));
  }
}


