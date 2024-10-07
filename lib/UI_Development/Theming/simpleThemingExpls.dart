import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theming Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hintColor: Colors.orange,
        brightness: Brightness.light,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.grey[900],
        hintColor: Colors.tealAccent,
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.tealAccent,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      themeMode: ThemeMode.system, // Automatically switches between light and dark mode
      //home: ThemingExamplePage(),
    );
  }
}

/*

theme: ThemeData(
  primarySwatch: Colors.green,
  accentColor: Colors.amber,
  appBarTheme: AppBarTheme(
    color: Colors.green,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black87, fontSize: 18),
    headline6: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
  ),
  buttonTheme: ButtonThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    buttonColor: Colors.green,
    textTheme: ButtonTextTheme.primary,
  ),
),



*/
class ThemeSwitcher extends StatefulWidget {
  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(title: Text("Theme Switcher")),
        body: Center(
          child: Switch(
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });
            },
          ),
        ),
      ),
    );
  }
}



class DynamicTheming extends StatefulWidget {
  @override
  _DynamicThemingState createState() => _DynamicThemingState();
}

class _DynamicThemingState extends State<DynamicTheming> {
  Color primaryColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Dynamic Theming')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    primaryColor = Colors.red; // Change to red theme
                  });
                },
                child: Text("Change to Red Theme"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    primaryColor = Colors.green; // Change to green theme
                  });
                },
                child: Text("Change to Green Theme"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
