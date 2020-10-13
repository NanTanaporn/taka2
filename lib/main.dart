import 'package:flutter/material.dart';
  import 'Screens/homescreen.dart';
import 'Screens/SignInScreen.dart';
import 'Screens/SignUPScreen.dart';
import 'Screens/editProfile.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Takushi ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: 'SignIn',
      routes: {
        'SignIn':(context)=>SignInScreen(),
        'SignUp':(context)=>SignUpScreen(),
        'Home':(context)=>HomeScreen(),
        'Edit':(context)=>EditScreen(),
// test
      },
    );
  }
}
