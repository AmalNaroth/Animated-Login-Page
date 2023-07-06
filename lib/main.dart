import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animated Login Page",
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.dark
      ),
      home:  LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget{
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin{
  AnimationController? iconAnimationController;

  Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red.withOpacity(0.5),
      body:const Stack(
        fit: StackFit.expand,
        children: [
        Image(image: AssetImage("assets/wallpaperflare.com_wallpaper (1).jpg"),
        fit: BoxFit.cover,
        color: Colors.black,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
          FlutterLogo(
            size: 100,
          )
        ],)
      ],),
    );
  }
}
