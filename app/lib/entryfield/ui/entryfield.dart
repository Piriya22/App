import 'dart:html';

import 'package:app/entryfield/bloc/entry_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntryField extends StatefulWidget {
  const EntryField({Key? key});

  @override
  _EntryFieldState createState() => _EntryFieldState();
}

class _EntryFieldState extends State<EntryField> {
  final TextEditingController _firstnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Record'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstnameController,
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _lastnameController,
              decoration: const InputDecoration(labelText: 'Last Name'),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                String firstname = _firstnameController.text;
                String lastname = _lastnameController.text;
                Navigator.pop(
                    context, {'firstName': firstname, 'lastName': lastname});
              },
              child: const Text('Add Record'),
            ),
          ],
        ),
      ),
    );
  }
}
