import 'package:flutter/material.dart';
import 'package:navigation_drawer/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Navigation Drawer"),
          ),
          backgroundColor: Color(0xff764ABC),
        ),
        drawer: Drawer(
          child: Center(
            child: ListView(
              children: [
                //DrawerHeader(
                //child: Text("Yasir Raza"),
                //),
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        color: Color(0xff764ABC)
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                    accountName: Text('Yasir Raza'),
                    accountEmail: Text('yasirrazaattari2002@gmail.com')),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home Screen"),
                  onTap: (){
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calculate),
                  title: Text("Screen Two"),
                  onTap: (){
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
              ],
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);
                // Navigator.push(context,
                //      MaterialPageRoute(builder: (context) => ScreenTwo()));
              },
              child: Center(
                child: Text(
                    'Screen Two'),
              ),

            )
          ],
        ),
      ),
    );
  }
}
