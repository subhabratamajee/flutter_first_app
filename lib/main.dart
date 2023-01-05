
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  FirstPage(),
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
    );
  }
}


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('data'),
      ),
      body: Center(
    child: ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
        return const SecondPage();
      }));
    }, child: const Text('nextPage')),    
      ),
      );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Second Page'),
    
    automaticallyImplyLeading: false,
      ),
      body:const Center(
        
    child: Text(' this is subhabrata Majee,You can contact with me . My Mobile Number is 6297385213')    
      ),
      );
  }
}