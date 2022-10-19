import 'package:final_project/club.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                accountName: Text('Dharmsinh Desai University'),
                accountEmail: Text('Nadiad'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/ddu.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover
                    ),
                  ),
                ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/ddu2.jpg'
                  ),
                  fit: BoxFit.cover,
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.access_time_rounded),
              title: Text('Recent Events'),
              trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,

                child:Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,

                  ),
                ),
              ),
              ),
            ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Clubs'),
              onTap: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => const MyClub(),
             ),
            ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.find_replace_outlined),
              title: Text('Resources'),
              onTap: () => null,
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () => null,
            ),
            Divider(),
          ],
        ),
    );
  }
}
