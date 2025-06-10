import 'package:example_custom_theme/appTheme.dart';
import 'package:example_custom_theme/back_button.dart';
import 'package:example_custom_theme/colors.dart';
import 'package:example_custom_theme/custom_button.dart';
import 'package:example_custom_theme/register.dart';
import 'package:flutter/material.dart';

class LoginTheme extends StatelessWidget {
  const LoginTheme({super.key, required this.loginLayout});
  final Widget loginLayout;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldLoginColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: CustomBackButton(),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset('assets/image10.png', fit: BoxFit.cover),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [SizedBox(height: 110), Expanded(child: loginLayout)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return LoginTheme(
      loginLayout: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 225),
          Text(
            'Login',
            style: AppTheme.headerDisplay.copyWith(color: charcoal),
          ),
          SizedBox(height: 24),
          TextField(decoration: InputDecoration(hintText: 'Username')),
          SizedBox(height: 16),
          TextField(decoration: InputDecoration(hintText: 'Password')),
          SizedBox(height: 24),
          Text(
            'Forgot Password',
            // style: AppTheme.headerDisplay.copyWith(color: charcoal),
          ),
          Spacer(), // Pushes the button to bottom
          SizedBox(
            width: 370,
            child: CustomButton(
              type: ButtonType.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              text: 'Register',
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 370,
            child: CustomButton(
              type: ButtonType.primary,
              onPressed: () {},
              text: 'Login',
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}

class ExpandedContentWithButton extends StatelessWidget {
  const ExpandedContentWithButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: AppTheme.headerDisplay.copyWith(color: charcoal),
          ),
          SizedBox(height: 24),
          TextField(decoration: InputDecoration(hintText: 'Username')),
          SizedBox(height: 16),
          TextField(decoration: InputDecoration(hintText: 'Password')),
          Spacer(), // ✅ Now works because Column is inside Expanded
          CustomButton(
            type: ButtonType.primary,
            onPressed: () {},
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
