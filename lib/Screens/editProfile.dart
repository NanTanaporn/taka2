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
                    child: Text(
                      "แก้ไขข้อมูลส่วนตัว",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
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
                    child: Text(
                      "ตั้งค่ารหัสผ่าน",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
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
                    child: Text(
                      "ตั้งค่า PIN",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
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

// test
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
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 70.0,
              height: 70.0,
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/img/jak.jpg'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                  "Jakky",
                   style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(Icons.email,
                            color: Colors.white),
                          ),
                        ),
                        TextSpan(text: 'Jakkapong@hotmail.com'),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        WidgetSpan(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 2.0),
                            child: Icon(Icons.call,
                            color: Colors.white),
                          ),
                        ),
                        TextSpan(text: '081-234-5678'),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
