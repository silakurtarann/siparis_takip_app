import 'package:flutter/material.dart';
import 'package:login_app/main.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xFFE3E2E2)),
          padding: EdgeInsets.all(40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.grey[800],
                      size: 30,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hesap Oluştur",
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800]),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: TextField(
                  style: TextStyle(fontSize: 13, color: Color(0xFF818285)),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'Ad',
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
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'Soyad',
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
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'E-Mail',
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
                    icon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'Şifre',
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
                    icon: Icon(Icons.lock_rounded),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none),
                    labelText: 'Şifre Tekrar',
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp())),
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF6BBEA4),
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    "Hesap Oluştur",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
