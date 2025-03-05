import 'package:flutter/material.dart';
import 'package:lab_3/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
          ),
          body: Builder(builder: (context) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/image_3.png",
                  height: 400,
                  fit: BoxFit.contain,
                ),
                Positioned.fill(
                  top: -200,
                  child: Container(
                    color: const Color.fromARGB(255, 106, 116, 69)
                        .withOpacity(0.5),
                    child: Center(
                      child: Text(
                        "Welcome to Flutter",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("Elevated button is clicked");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(200, 50),
                        ),
                        child: Text(
                          "Show SnackBar",
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          minimumSize: Size(200, 50),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const SecondPage();
                            },
                          ));
                        },
                        child: Text(
                          "Go to Second Screen",
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 250,
                  child: Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            print("Toggle Image is clicked");
                          },
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            minimumSize: const Size(200, 50),
                          ),
                          child: Text(
                            "Toggle Image",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ))
                    ],
                  ),
                )
              ],
            );
          })),
    );
  }
}
