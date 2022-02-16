import 'package:flutter/material.dart';
import 'package:login_app/Screens/Maps.dart';
import 'package:login_app/Screens/OrderList.dart';
import 'package:login_app/Screens/CompleteOrder.dart';
import 'package:login_app/Styles.dart';
import 'package:login_app/main.dart';

class AddOrder extends StatefulWidget {
  @override
  _AddOrderState createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  final List<String> customers = [
    "İzzet Özuçargil",
    "Abdülvahap Saygın",
    "Sıla Kurtaran",
    "Alişan Şengezer"
  ];
  String selectedCustomer = "İzzet Özuçargil";

  final List<String> orders = [
    "Coca Cola",
    "Fanta",
    "Pepsi",
    "Sigara",
    "Tavuk"
  ];
  String selectedOrder = "Coca Cola";

  final List<String> pieces = [
    "1 Koli",
    "2 Koli",
    "3 Koli",
    "4 Koli",
    "5 Koli",
    "6 Koli",
    "6 Koli",
    "7 Koli",
    "8 Koli",
    "9 Koli",
    "10 Koli"
  ];
  String selectedPiece = "1 Koli";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Yeni Sipariş Ekle",
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
                        Icon(
                          Icons.add_shopping_cart_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Yeni Sipariş Ekle",
                            style: SelectedDrawerText.drawerText)
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
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Siparişi Tamamla", style: DrawerText.drawerText)
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
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/shoppingCart.png"),
                DropdownButton<String>(
                  value: selectedCustomer,
                  isExpanded: true,
                  style: TextStyle(color: Colors.grey[800]),
                  onChanged: (value) {
                    setState(() {
                      selectedCustomer = value!;
                    });
                  },
                  items: customers.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  style: TextStyle(color: Colors.grey[800]),
                  value: selectedOrder,
                  onChanged: (value) {
                    setState(() {
                      selectedOrder = value!;
                    });
                  },
                  items: orders.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton<String>(
                  isExpanded: true,
                  style: TextStyle(color: Colors.grey[800]),
                  value: selectedPiece,
                  onChanged: (value) {
                    setState(() {
                      selectedPiece = value!;
                    });
                  },
                  items: pieces.map<DropdownMenuItem<String>>((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CompleteOrder()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6BBEA4),
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      "Siparişi Ekle",
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
