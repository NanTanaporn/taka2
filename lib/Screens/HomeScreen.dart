import 'package:flutter/material.dart';
import 'editProfile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
// 
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('asset/img/header.jpg'))),
            child: _myCover(),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  labelText: 'ค้นหาสถานที่',
                )),
          ),
          _aa(context),
          _aa(context),
          _aa(context),
          _aa(context),
          SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Container(
              child: Center(
                child: MaterialButton(
                  height: 40,
                  minWidth: 250,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20)),
                  onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditScreen()));
                      },
                  child: Text(
                    "กำหนดการเดินทางเอง",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  color: Color(0xFF7A9BEE),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _myCover() {
  return Row(
    children: <Widget>[
      Positioned(
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (Text(
                  'TAKUSHI',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                )),
                Container(
                  width: 125.0,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.account_circle),
                        iconSize: 43.0,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    ],
  );
}

Widget _aa(context) {
  return Column(
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 55.0,
                  height: 55.0,
                  color: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.white,
                    backgroundImage: AssetImage('asset/img/jak.jpg'),
                  ),
                ),
                SizedBox(width: 5.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jakky',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: FlatButton(
                onPressed: () {},
                color: Colors.red[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  'เข้าร่วมการเดินทาง',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
