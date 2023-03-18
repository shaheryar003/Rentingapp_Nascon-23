import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nascon/widgets/loginButton.dart';

class postItem extends StatelessWidget {
  const postItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Item",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 1,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey, style: BorderStyle.solid),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt,
                              size: 50,
                              color: Colors.orange,
                            ),
                            Text(
                              "Upload Photo",
                              style: TextStyle(color: Colors.orange),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey, style: BorderStyle.solid),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.videocam,
                              size: 50,
                              color: Colors.orange,
                            ),
                            Text(
                              "Upload Video",
                              style: TextStyle(color: Colors.orange),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Hourly Rate",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Hourly Rate',
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Description',
                  ),
                  //expands: true,
                  maxLines: 2,
                ),
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
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter City Name',
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: LoginButton(route: postItem(), text: "Post Item"))
              ],
            ),
          )),
    );
  }
}
