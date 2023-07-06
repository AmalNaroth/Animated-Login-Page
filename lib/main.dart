import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animated Login Page",
      theme: ThemeData(primarySwatch: Colors.grey, brightness: Brightness.dark),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _iconAnimationController;

  Animation<double>? _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _iconAnimation = CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.easeOut);
    _iconAnimation!.addListener(
      () => this.setState(() {}),
    );
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const Image(
            image: AssetImage("assets/wallpaperflare.com_wallpaper (1).jpg"),
            fit: BoxFit.cover,
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: _iconAnimation!.value * 100,
              ),
              Form(
                  child: Theme(
                    data: ThemeData(
                      brightness: Brightness.dark,
                      primaryColor: const Color.fromARGB(255, 255, 0, 0),
                      primarySwatch: Colors.lightGreen,
                      inputDecorationTheme: InputDecorationTheme(
                        labelStyle: TextStyle(color: Colors.teal,fontSize: 20)
                      )
                    ),
                    child: Container(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                      TextFormField(
                        decoration: const InputDecoration(labelText: "Enter Email"),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextFormField(
                        decoration:
                            const InputDecoration(labelText: "Enter the password"),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      )
                                    ],
                                  ),
                    ),
                  ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              MaterialButton(
                height: 40,
                minWidth: 100,
                color: Colors.green,
                textColor: Colors.black,
                onPressed: (){},
                splashColor: Colors.green.shade100,
              child: Text("Submit"),)
            ],
          )
        ],
      ),
    );
  }
}
