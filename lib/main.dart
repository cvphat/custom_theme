import 'package:example_custom_theme/appTheme.dart';
import 'package:example_custom_theme/custom_button.dart';
import 'package:example_custom_theme/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final f = FocusNode();
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Header Body', style: AppTheme.headerDisplay),
            Text('Header Body Outline', style: AppTheme.headerBodyOutline),
            CustomButton(
              type: ButtonType.general,
              // disabled: true,
              onPressed: () {
                FocusScope.of(context).requestFocus(f);
              },
              text: 'BOOK NOW',
              focusNode: f,
            ),
            CustomButton(
              type: ButtonType.primary,
              // disabled: true,
              onPressed: () {
                setState(() {
                  a = true;
                });
              },
              text: 'Login',
            ),
            SizedBox(height: 5),
            CustomButton(
              type: ButtonType.primary,
              disabled: true,
              loading: true,
              onPressed: () {},
              text: 'Login',
            ),
            SizedBox(height: 5),
            CustomButton(
              type: ButtonType.secondary,
              loading: a,
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              text: 'View Details',
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                // errorText: 'This username is error',
              ),
            ),
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Card(child: Text('The card content')),
            ),
          ],
        ),
      ),
    );
  }
}
