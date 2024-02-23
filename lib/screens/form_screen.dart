import 'package:flutter/material.dart';
import 'package:formfill/components/text_form_field.dart';

class MyFormScreen extends StatefulWidget {
  const MyFormScreen({super.key});

  @override
  State<MyFormScreen> createState() => _MyFormScreenState();
}

class _MyFormScreenState extends State<MyFormScreen> {
  final TextFormField textFormField = TextFormField();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Fill'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Container(
            decoration: const BoxDecoration(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MyTextFormField(
                  hintText: "Enter your name",
                  icon: Icons.person,
                  controller: _nameController,
                  // labelText: 'Name',
                ),
                const SizedBox(height: 16.0),
                MyTextFormField(
                  hintText: "Enter your email address",
                  icon: Icons.email,
                  controller: _emailController,
                  // labelText: 'Email',
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        String name = _nameController.text;
                        String email = _emailController.text;

                        print('Name: $name, Email: $email');
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 20.0,
                        minimumSize: const Size.fromHeight(50)),
                    child: const Text(
                      'Submit',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
