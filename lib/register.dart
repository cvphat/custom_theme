import 'package:example_custom_theme/appTheme.dart';
import 'package:example_custom_theme/colors.dart';
import 'package:example_custom_theme/custom_button.dart';
import 'package:example_custom_theme/login.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LoginTheme(
      loginLayout: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Registration',
            style: AppTheme.headerDisplay.copyWith(color: charcoal),
          ),
          SizedBox(height: 24),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Choose an option',
              border: OutlineInputBorder(),
            ),
            value: 'Mr',
            items:
                ['Mr', 'Mrs'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
            onChanged: (String? newValue) {},
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              labelText: 'Password',
            ),
            obscureText: true,
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'First Name',
              labelText: 'First Name',
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Last Name',
              labelText: 'Last Name',
            ),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(hintText: 'Email', labelText: 'Email'),
          ),
          SizedBox(height: 16),
          TextField(
            decoration: InputDecoration(
              hintText: 'Confirm Email',
              labelText: 'Confirm Email',
            ),
          ),
          SizedBox(height: 16),
          Spacer(), // Pushes the button to bottom
          SizedBox(
            width: 370,
            child: CustomButton(
              type: ButtonType.primary,
              onPressed: () {},
              text: 'Submit',
            ),
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
