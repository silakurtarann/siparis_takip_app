import 'package:flutter/material.dart';
import 'package:login_app/Screens/Maps.dart';
import 'package:login_app/Screens/OrderList.dart';
import 'package:login_app/Screens/AddOrder.dart';
import 'package:login_app/Styles.dart';
import 'package:login_app/main.dart';

class CompleteOrder extends StatefulWidget {
  @override
  _CompleteOrderState createState() => _CompleteOrderState();
}

class _CompleteOrderState extends State<CompleteOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Siparişi Tamamla",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFF6BBEA4),
          ),
          endDrawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Maps())),
                    child: Row(
                      children: [
                        Icon(Icons.home_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Anasayfa", style: DrawerText.drawerText)
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrderList())),
                    child: Row(
                      children: [
                        Icon(Icons.list_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Sipariş Listesi", style: DrawerText.drawerText)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AddOrder())),
                    child: Row(
                      children: [
                        Icon(Icons.add_shopping_cart_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Yeni Sipariş Ekle", style: DrawerText.drawerText)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompleteOrder())),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Siparişi Tamamla",
                            style: SelectedDrawerText.drawerText)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp())),
                    child: Row(
                      children: [
                        Icon(Icons.exit_to_app_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Çıkış", style: DrawerText.drawerText)
                      ],
                    ),
                  ),
                  SizedBox(height: 180),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Version:1.0.2", style: TextStyle(fontSize: 10, color: Colors.grey))],
                  )
                ],
              ),
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 20,
                      color: Colors.grey[800],
                    ),
                    Text(
                      " Tamamlanan Siparişler",
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #12323\nFiyat: 50.00',
                      style: TextStyle(color: Colors.green, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #13536\nFiyat: 130.00',
                      style: TextStyle(color: Colors.green, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #23895\nFiyat: 300.00',
                      style: TextStyle(color: Colors.green, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #24955\nFiyat: 70.00',
                      style: TextStyle(color: Colors.green, fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.motorcycle_rounded,
                      size: 20,
                      color: Colors.grey[800],
                    ),
                    Text(
                      " Yoldaki Siparişler",
                      style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #12212\nFiyat: 10.00',
                      style: TextStyle(color: Colors.yellow[800], fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #12334\nFiyat: 10.00',
                      style: TextStyle(color: Colors.yellow[800], fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Sipariş Kodu: #23444\nFiyat: 10.00',
                      style: TextStyle(color: Colors.yellow[800], fontSize: 13),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6BBEA4),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      "Siparişi Tamamla",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
 child: Text("Tamam", style: TextStyle(color:Colors.white),),
    onPressed: () {
      Navigator.of(context).pop();
    },
    style: TextButton.styleFrom(
      backgroundColor: Color(0xFF6BBEA4),
    )
  );
  
  

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.check_circle_outline,
          color: Colors.green,
          size: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text("Tebrikler,", style: TextStyle(color: Colors.green)),
        Text(
          "Siparişiniz Tamamlandı.",
          style: TextStyle(color: Colors.green),
        ),
      ],
    ),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sipariş Numaranız: #12345",
          style: ListText.listText,
        ),
      ],
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
