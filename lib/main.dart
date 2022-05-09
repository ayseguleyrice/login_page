import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug yazisi kaldirma
      title: 'PetFriends',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.brown[600]),
      home: Scaffold(resizeToAvoidBottomInset: false,
          appBar: AppBar(title: const Text("PetFriends",
            style: TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),


          ),),
          body: LoginHome()),

    );
  }
}

class LoginHome extends StatelessWidget {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome (BuildContext context)
{
  final emailField = TextFormField(
    obscureText: false, //yazilani gosterir
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "User Email",
        prefixIcon: Icon(Icons.mail, color: Colors.blue),
        labelStyle: TextStyle(color: Colors.blue.shade200),

        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
      validator:(value){ //kullanici adi girilmeme hatasi
        if(value!.isEmpty){
          return "Please enter username";
        }
        else{
          return null;
        }
      },
    onSaved: (value){
    var username=value;},
  );

SizedBox(height: 4.0);

  final passwordField = TextFormField(
    obscureText: true, // yazilani gostermez
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        labelText: "Password",
        prefixIcon: Icon(Icons.security, color: Colors.blue),

        labelStyle: TextStyle(color: Colors.blue.shade200),
        border:

        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))


    ), validator:(value){ //kullanici adi girilmeme hatasi
    if(value!.isEmpty){
      return "Please enter password";
    }
    else{
      return null;
    }
  },
  );



  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(21),
    color: Colors.blue[300],
    child: MaterialButton(
      minWidth: MediaQuery //kendi ayarliyor boyutunu
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 15.0),
      onPressed: () { //tiklama ozelligi


      },

      child: Text("Login",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),
  );


  final registerButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue[300],
    child: MaterialButton(
      minWidth: MediaQuery
          .of(context)
          .size
          .width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {

      },

      child: Text("Register",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),),
    ),

  );


  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


            Image.asset("images/pati.png" ),

            SizedBox(height: 10.0,),




            SizedBox(height: 30.0),
            emailField,

            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 5.0,),
            Container(
                alignment: Alignment(1,0),
                padding: EdgeInsets.only(top:25, left: 40),
                child: const InkWell(
                  child: Text("Forgot Password",
                    style: TextStyle(color: Colors.blue,
                    fontWeight:FontWeight.w500,
                      fontFamily: 'Montserrat',
                      decoration:TextDecoration.underline


                  ),
                  ),
                )
            ),



            SizedBox(height: 15.0),
            loginButton,

            SizedBox(height: 10.0),
            registerButton


          ],
        ),
      ),
    ),
  );





}


















