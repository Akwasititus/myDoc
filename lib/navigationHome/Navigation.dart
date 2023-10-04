import 'package:flutter/material.dart';

import 'navs/Notification Bank/Notifications.dart';
import 'navs/Support Bank/blood_type.dart';
import 'navs/Support Bank/support.dart';
import 'navs/chats/chat.dart';
import 'navs/Home station/home.dart';
import 'navs/settings.dart';




class NavigationHome extends StatefulWidget {
  const NavigationHome({Key? key}) : super(key: key);

  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Home(),
    const Notifications(),
    const Chats(),
    const BloodType()
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: Container(
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 5),
          ],
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.black,
          iconSize: 20,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          backgroundColor: Colors.white,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              //icon: ImageIcon(AssetImage("images/referral.png")),
              icon: Icon(Icons.people),
              label: 'Blood Type',
            ),
            
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),
      //   onPressed: (){
      //     Get.to(const AdminLogin(),duration: Duration(seconds: 1),transition: Transition.native);
      //   }),
    );
  }
}