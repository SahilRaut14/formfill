import 'package:flutter/material.dart';
import 'package:formfill/screens/form_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FormFill',
      home: Continue(),
    );
  }
}

class Continue extends StatelessWidget {
  const Continue({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: const ButtonStyle(),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyFormScreen(),
              ),
            );
          },
          child: const Text(
            'Continue >',
          ),
        ),
      ),
    );
  }
}
