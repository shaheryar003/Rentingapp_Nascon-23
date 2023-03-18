import 'package:flutter/material.dart';
import 'package:nascon/Screen/login.dart';
import 'package:nascon/Screen/profile.dart';
import 'package:nascon/widgets/textbutton.dart';

import '../widgets/loginButton.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  String _selectedCountry = 'USA'; // set a default value
  String _selectedCity = '';
  List<String> _countries = [
    'USA',
    'UK',
    'Canada',
    'Australia',
    'Germany',
  ];
  Map<String, List<String>> _citiesByCountry = {
    'USA': ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Philadelphia'],
    'UK': ['London', 'Manchester', 'Liverpool', 'Birmingham', 'Leeds'],
    'Canada': ['Toronto', 'Vancouver', 'Montreal', 'Calgary', 'Ottawa'],
    'Australia': ['Sydney', 'Melbourne', 'Brisbane', 'Perth', 'Adelaide'],
    'Germany': ['Berlin', 'Munich', 'Hamburg', 'Frankfurt', 'Cologne'],
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Renting App',
                  style: TextStyle(
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Name',
                  ),
                ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Email',
                  ),
                ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Contact No",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Contact Number',
                  ),
                ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Country",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DropdownButtonFormField<String>(
                  value: _selectedCountry,
                  onChanged: (value1) {
                    setState(() {
                      _selectedCountry = value1!;
                      _selectedCity = '';
                    });
                  },
                  items: _countries.map((country) {
                    return DropdownMenuItem<String>(
                      value: country,
                      child: Text(country),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "City",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                DropdownButtonFormField<String>(
                  value: _selectedCity.isNotEmpty ? _selectedCity : null,
                  onChanged: (value) {
                    setState(() {
                      _selectedCity = value!;
                    });
                  },
                  items: _citiesByCountry[_selectedCountry]?.map((city) {
                    return DropdownMenuItem<String>(
                      value: city,
                      child: Text(city),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                LoginButton(
                  text: "Sign up",
                  route: profileScreen(),
                ),
                textBtn(
                  route: LoginScreen(),
                  text: "Login",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
