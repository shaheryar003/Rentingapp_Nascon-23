// ignore: depend_on_referenced_packages
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CountryListPick(

              // if you need custom picker use this
              // pickerBuilder: (context, CountryCode countryCode) {
              //   return Row(
              //     children: [
              //       Image.asset(
              //         countryCode.flagUri,
              //         package: 'country_list_pick',
              //       ),
              //       Text(countryCode.code),
              //       Text(countryCode.dialCode),
              //     ],
              //   );
              // },
              theme: CountryTheme(
                isShowFlag: true,
                isShowTitle: true,
                isShowCode: false,
                isDownIcon: true,
                showEnglishName: false,
                labelColor: Colors.orange,
              ),
              initialSelection: 'PK'),
        ),
      ),
    );
  }
}
