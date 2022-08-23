// ignore_for_file: file_names

import 'package:flutter/material.dart';

 class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get text => null;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        title: const Text("Find the product sathimart"),
        actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart), color: Colors.lightBlueAccent,)
        ],
        backgroundColor: Colors.orange,
      ),
      body: const Center(
          child: Text(
        'साथीमार्टमा तपाइलाई स्वागत् छ |', 
        
        style: TextStyle(fontSize: 20, color:Colors.blue,),
        
      )),
      bottomNavigationBar: BottomNavigationBar(
		currentIndex: 0,
		fixedColor: Colors.orangeAccent,
		items: const [
		BottomNavigationBarItem(
			label: "Home",
			icon: Icon(Icons.home),
		),
		BottomNavigationBarItem(
			label: "Search",
			icon: Icon(Icons.search),
		),
		BottomNavigationBarItem(
			label: "Profile",
			icon: Icon(Icons.account_circle),
		),
		],
		onTap: (int indexOfItem) {}),


      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.lightBlueAccent),
                accountName: Text(
                  "Santosh Tamang",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("santoshbomjon234@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 178, 137, 255),
                    child: Text(
                    "S",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  )
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Deawer
    );
    
		
}
}