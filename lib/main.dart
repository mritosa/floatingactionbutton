import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          final snackBar = SnackBar(
            duration: const Duration(seconds: 5),
            shape: const StadiumBorder(),
            backgroundColor: Colors.grey ,
            elevation: 0,
            behavior: SnackBarBehavior.floating,
              content: Text('Uspješno kliknuti Floating Action Gumb'),
          );
          ScaffoldMessenger.of(context)..showSnackBar(snackBar);
        },
        child: const Icon(Icons.add_circle),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
