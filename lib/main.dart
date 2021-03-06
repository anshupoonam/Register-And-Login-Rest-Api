import 'package:flutter/material.dart';
import 'package:milkmanagement/pages/home_page.dart';
import 'package:milkmanagement/pages/login_page.dart';
import 'package:milkmanagement/shared_service.dart';

Widget _defaultHome = const LoginPage();
void main() async  {
   WidgetsFlutterBinding.ensureInitialized();
    var isLoggedIn = await SharedService.isLoggedIn();
    //print('isLoggedIn: ${isLoggedIn}');
    if (isLoggedIn == true) {
      _defaultHome = const HomePAGE();
    }
    runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Milk Management',

      darkTheme: ThemeData.dark(),
      //themeMode: EasyDynamicTheme.of(context).themeMode,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: Colors.white,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          elevation: 0,
          foregroundColor: Colors.white,
        ),
        // accentColor: Colors.deepPurpleAccent,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 22.0, color: Colors.redAccent),
          headline2: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w700,
            color: Colors.redAccent,
          ),
          bodyText1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
            color: Colors.blueAccent,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: _defaultHome,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const HomePAGE(),
        '/login': (BuildContext context) => const LoginPage(),
      },
    );
  }
}
