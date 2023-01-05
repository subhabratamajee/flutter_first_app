import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "clicked";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Subhabrata'),
        ),
        body: Center(
            child: currentIndex==0? Container(
          color: Color.fromARGB(255, 202, 152, 0),
          width: double.infinity,
          height: double.infinity,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                      onPrimary: Colors.amber,
                    ),
                    onPressed: () {
                      setState(() {
                        buttonName = buttonName;
                      });
                    },
                    child: Text(buttonName)),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = 'majee';
                      });
                    },
                    child: Text(buttonName))
              ]),
        ):Image.asset('images/abc.jpeg')
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'contact', icon: Icon(Icons.settings))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

