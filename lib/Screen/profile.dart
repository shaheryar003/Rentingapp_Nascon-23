import 'package:flutter/material.dart';
import 'package:nascon/Screen/login.dart';

class profileScreen extends StatefulWidget {
  const profileScreen({Key? key}) : super(key: key);

  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Edit Screen",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 1,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 20),
              child: GestureDetector(
                onTap: () {
                  // Perform save operation
                },
                child: Text(
                  "Save Changes",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),

        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
