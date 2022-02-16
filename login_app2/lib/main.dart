import 'package:flutter/material.dart';
import 'package:login_app/Screens/CreateAccount.dart';
import 'package:login_app/Screens/ForgotPassword.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
/*import 'package:login_app/Screens/Maps.dart';*/
import 'package:login_app/Screens/MapsPage.dart';

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset(
          'assets/images/logo.png',
        ),
        nextScreen: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFE3E2E2)),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  style: TextStyle(fontSize: 13, color: Color(0xFF818285)),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none),
                    labelText: 'Mail Adresiniz',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  style: TextStyle(fontSize: 13, color: Color(0xFF818285)),
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'Şifreniz',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(width: 199.5),
                  GestureDetector(
                    child: Text(
                      "Şifremi Unuttum",
                      style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => MapsPage())),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF6BBEA4),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    "Giriş",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  child: Text(
                    "Henüz hesabın yok mu, şimdi kayıt ol!",
                    style: TextStyle(fontSize: 13, color: Colors.grey[800]),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateAccount()))),
                        SizedBox(height: 20,),
              Image.asset("assets/images/kosgeb_logo.png", width: 100,)
            ],
          ),
        ),
      ),
    );
  }
}
