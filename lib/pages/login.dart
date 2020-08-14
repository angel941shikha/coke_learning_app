import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //backgroundColor: Colors.black,
        body: new Stack(fit: StackFit.expand, children: <Widget>[
          new Image(
            image: new AssetImage('images/login/background.jpg'),
            fit: BoxFit.cover,
            //color: Colors.black87,
            //colorBlendMode: BlendMode.darken,
          ),
          new Column(
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
                              new Text('Remember Password',style:TextStyle(color:Colors.white,)),
                              new Text('Forget Password',style:TextStyle(color:Colors.white,)),
                              new MaterialButton(
                                height: 20.0,
                                Width: 40.0,
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
              ])
        ]));
  }
}


