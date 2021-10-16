import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FlutterApp()));
}

class FlutterApp extends StatefulWidget {
  const FlutterApp({Key? key}) : super(key: key);

  @override
  _FlutterAppState createState() => _FlutterAppState();
}

class _FlutterAppState extends State<FlutterApp> {
  double containerW = 200;
  double containerH = 200;
  double rad = 20;
  Color containercol = Colors.red;
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              containerW = 200 / 2;
              containerH = 200 / 2;
              rad = containerH;
              containercol = Colors.black45;
              isVisible = true;
            });
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                child: Visibility(
                  child: Icon(Icons.camera),
                  visible: isVisible,
                ),
                duration: Duration(seconds: 2),
                height: containerH,
                width: containerW,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(rad),
                  color: containercol,
                ),
              ),
              FlutterLogo(
                duration: Duration(seconds: 2),
                size: 50,
                textColor: Colors.green,
                style: FlutterLogoStyle.stacked,
              ),
              Opacity(
                opacity: 0.0,
                child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.pink,
              ),
            ],
          ),
        ));
  }
}
