import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProfileScreen(),
        theme: ThemeData(brightness: Brightness.dark));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text('havanath__'),
          ),
          drawer: Drawer(
              child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('havanath__'),
                accountEmail: Text('mesyyou@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/profil.jpeg'),
                ),
                decoration: BoxDecoration(color: Colors.indigo[400]),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text('Logout'),
              ),
            ],
          )),
          body: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 80.0,
                    backgroundImage: AssetImage('assets/profil.jpeg'),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'havanath__',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Text(
                    'I aced everything i put my mind into',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Posts',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                '1,4B',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Followers',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Following',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profil'),
                  ),
                  SizedBox(height: 15),
                  //default tab controller
                  TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_3x3, color: Colors.indigo[400]),
                      ),
                      Tab(
                        icon: Icon(Icons.favorite, color: Colors.indigo[400]),
                      ),
                      Tab(
                        icon: Icon(Icons.lock, color: Colors.indigo[400]),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        Center(child: Text('View Content')),
                        Center(child: Text('Favorites')),
                        Center(child: Text('Private Content')),
                      ],
                    ),
                  ),
                ],
              ))),
    );
  }
}
