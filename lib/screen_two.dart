import 'package:flutter/material.dart';
import 'package:navigation_drawer/home_screen.dart';
class ScreenTwo extends StatefulWidget {
  static const String id = "screen_two";
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Navigation Drawer"),
        ),
        backgroundColor: Color(0xff764ABC),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
                itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                    title: Text("Home Screen"),
                    onTap: (){
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
