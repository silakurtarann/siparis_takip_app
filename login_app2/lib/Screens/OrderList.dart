import 'package:flutter/material.dart';
import 'package:login_app/Screens/AddOrder.dart';
import 'package:login_app/Screens/CompleteOrder.dart';
import 'package:login_app/Screens/Maps.dart';
import 'package:login_app/Styles.dart';
import 'package:login_app/main.dart';

class OrderList extends StatefulWidget {
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Sipariş Listesi", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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

                  SizedBox(height: 20,),

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
                        Icon(Icons.list_outlined, color: Colors.red,),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Sipariş Listesi", style: SelectedDrawerText.drawerText)
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
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CompleteOrder())),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag_outlined),
                        SizedBox(width: 20,),
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
                        SizedBox(width: 20,),
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


            body: SingleChildScrollView(
              child: Column(
                children: [


                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: ShoppingBoxDecoration.boxStyle,

                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.format_list_numbered, size: 15, color: Color(0xFF6BBEA4),),
                                    Text(" Sipariş Numarası: #12345"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined ,size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Sipariş Saati: 15.44", style: ListText.listText,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Konum: Adana....", style: ListText.listText,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/images/product1.png", width: 100, height: 100,),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 10,),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: ShoppingBoxDecoration.boxStyle,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.format_list_numbered, size: 15, color: Color(0xFF6BBEA4),),
                                    Text(" Sipariş Numarası: #58769"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined ,size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Sipariş Saati: 11.17", style: ListText.listText,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Konum: Yüreğir....", style: ListText.listText,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/images/product21.png", width: 100, height: 100,),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 10,),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: ShoppingBoxDecoration.boxStyle,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.format_list_numbered, size: 15, color: Color(0xFF6BBEA4),),
                                    Text(" Sipariş Numarası: #4589"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined ,size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Sipariş Saati: 13.24", style: ListText.listText,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Konum: Seyhan...", style: ListText.listText,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/images/product31.png", width: 100, height: 100,),
                          )
                        ],
                      )
                  ),

                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: ShoppingBoxDecoration.boxStyle,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.format_list_numbered, size: 15, color: Color(0xFF6BBEA4),),
                                    Text(" Sipariş Numarası: #34594"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined ,size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Sipariş Saati: 16.23", style: ListText.listText,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Konum: Çukurova....", style: ListText.listText,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/images/product4.png", width: 100, height: 100,),
                          )
                        ],
                      )
                  ),
                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      decoration: ShoppingBoxDecoration.boxStyle,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.format_list_numbered, size: 15, color: Color(0xFF6BBEA4),),
                                    Text(" Sipariş Numarası: #4589"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined ,size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Sipariş Saati: 13.24", style: ListText.listText,),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined, size: 15, color: Color(0xFF6BBEA4)),
                                    Text(" Konum: Seyhan...", style: ListText.listText,),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset("assets/images/product5.png", width: 100, height: 100,),
                          )
                        ],
                      )
                  ),

                  SizedBox(height: 10,),

                ],
              ),
            ),

      ),
    );
  }
}
