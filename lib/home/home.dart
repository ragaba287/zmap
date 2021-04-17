import 'package:flutter/material.dart';
import 'package:zmap/registration/login.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F4F5),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.house),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(Icons.login_outlined),
                title: Text('Logout'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffF2F4F5),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.speaker, color: Colors.black),
            onPressed: () {},
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hello,\nJohn Smith',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  CircleAvatar(
                    radius: 40,
                    child: Image.asset(
                      'assets/logo.png',
                    ),
                  )
                ],
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.16),
                        blurRadius: 6,
                      )
                    ]),
                child: Row(
                  children: [
                    //TODO The from to indcator
                    // Column(
                    //   children: [
                    //     TextField(),
                    //     TextField(),
                    //   ],
                    // ),
                    IconButton(icon: Icon(Icons.repeat), onPressed: () {}),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Latest Trips'),
                  TextButton(onPressed: () {}, child: Text('See all')),
                ],
              ),
              Container(
                height: 220,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        color: Colors.red,
                        height: 100,
                        width: 80,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
