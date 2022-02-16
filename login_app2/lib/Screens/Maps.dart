
import 'package:flutter/material.dart';
import 'package:login_app/Screens/AddOrder.dart';
import 'package:login_app/Screens/CompleteOrder.dart';
import 'package:login_app/Screens/OrderList.dart';
import 'package:login_app/Styles.dart';
import 'package:login_app/main.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';


class Maps extends StatefulWidget {
  @override
  _MapsState createState() => _MapsState();
}


class _MapsState extends State<Maps> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  AppBar(
          centerTitle: true,
          title: Text(
            "Google Maps",
          ),

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
                      Icon(Icons.home_outlined, color: Colors.red,),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Anasayfa", style: SelectedDrawerText.drawerText)
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



        body: MapsScreen(),

      ),
    );
  }

  // This method will add markers to the map based on the LatLng position
  

  
  

}

class MapsScreen extends StatefulWidget {
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {

static const _initialCameraPosition = CameraPosition(
  target: LatLng(37.000000, 35.321335),
  zoom: 11.5
  );

  late GoogleMapController  _googleMapController;


  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition ,
        onMapCreated: (controller) => _googleMapController = controller,
        ),
       
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.black,
          onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition),
          ),
          child: const Icon(Icons.center_focus_strong),
        ),
      
    );
  }
}
