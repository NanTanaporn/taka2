import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  EditScreen({Key key}) : super(key: key);

  @override
  _EditScreen createState() => _EditScreen();
}

class _EditScreen extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          BackButtonWidget(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: null),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.only(right: 20, left: 10),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'แก้ไขข้อมูลส่วนตัว'),
                      )),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: null),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: null),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 10),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Confirm Password'),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: null),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xFF7A9BEE),
                  child: Text(
                    'ออกจากระบบ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// 
class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('asset/img/header.jpg'))),
      child: Positioned(
          child: Stack(
        children: <Widget>[
          Positioned(
              top: 20,
              child: Row(
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),

  
                ],
              )),
          Positioned(
            bottom: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Text(
                'ข้อมูลส่วนตัว',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
          )
        ],
      )),
    );
  }
}
