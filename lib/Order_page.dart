import 'package:flutter/material.dart';
import 'foodcard.dart';
import 'Home_Screen.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodMenu(),
    );
  }
}

class FoodMenu extends StatefulWidget {
  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  List<String> imgUrl = [
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-1.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-2.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-3.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-4.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-5.png",
    "https://pngimage.net/wp-content/uploads/2018/06/sizzler-png-6.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      //Here is the AppBar
      appBar: AppBar(
        backgroundColor: Color(0xFFFCFCFC),
        title: Text(
          "Food App",
          style: TextStyle(
            color: Color(0xFFfc6a26),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Let's Eat \nOrder your Food Now ",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search... ",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15)),
                  )),
                  RaisedButton(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Color(0xFFfc6a26),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //Here is the food menu
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: <Widget>[
                  foodCard(imgUrl[0], "Meat plate", "25"),
                  foodCard(imgUrl[1], "Meat plate", "25"),
                  foodCard(imgUrl[2], "Meat plate", "25"),
                  foodCard(imgUrl[3], "Meat plate", "25"),
                  foodCard(imgUrl[4], "Meat plate", "25"),
                  foodCard(imgUrl[5], "Meat plate", "25"),
                ],
              ),
            ),
          ],
        ),
      ),
      //Here is the bottom Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFfcfcfc),
        elevation: 0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFFfc6a26),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("Our shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}
