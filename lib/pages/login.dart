import 'package:coke_learning_app/pages/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';




class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage>{
bool _checkBoxVal=true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      body: Stack(
        children: <Widget>[
          Container(
            height: size.height,
            width: size.width,
            child: new Image.asset(
              'images/login/background.jpg',
              width: size.width,
              height: size.height,
              fit: BoxFit.fitHeight,
            ),
          ),
          Positioned(
            top: 150,
            right: 20,
            child: Center(
              child: Stack(children: <Widget>[

                 Image.asset('images/login/logo.png' ,width: 200)
              ],
              ),
            ),
          ),




          Padding(
            padding: const EdgeInsets.fromLTRB(0,250,0,0),
            child: Container(
              width: double.infinity,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    new Container(
                        child: Theme(
                          data: new ThemeData(
                            brightness: Brightness.dark,
                            primarySwatch: Colors.red,
                            inputDecorationTheme: new InputDecorationTheme(
                                labelStyle:
                                new TextStyle(color: Colors.white,)),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new TextFormField(
                                    decoration: new InputDecoration(
                                      prefixIcon: Icon(Icons.mail),
                                      labelText: "Employee ID",
                                      focusColor: Colors.white,
                                      hoverColor: Colors.white,

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
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [

                                      Row(
                                        children: <Widget>[
                                          new Text('Remember Password',style:TextStyle(color:Colors.white,fontSize: 12)),
                                          Checkbox(
                                            hoverColor: Colors.red,
                                            onChanged: (bool value)
                                            {
                                              setState(()=>this._checkBoxVal=value);
                                            },
                                            value: this._checkBoxVal,
                                          ),
                                        ],
                                      ),

                                      new Text('Forget Password',style:TextStyle(color:Colors.white,fontSize: 12)),

                                    ],
                                  ),
                                  SizedBox(height: 20,),
                                  OutlineGradientButton(
                                    padding: const EdgeInsets.fromLTRB(30,15,30,15),
                                    backgroundColor: Colors.white,
                                    onTap: (){

                                      Navigator.pushReplacement(
                                          context, MaterialPageRoute(builder: (context) => Dashboard()));
                                    },
                                    child: Text('LOGIN',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                                    gradient: LinearGradient(colors: [Colors.red, Colors.red[900]]),
                                    strokeWidth: 8,
                                    radius: Radius.circular(20),
                                  ),
                                ]),
                          ),
                        ))

                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}

