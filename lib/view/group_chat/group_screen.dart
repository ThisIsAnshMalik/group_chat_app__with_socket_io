import 'package:flutter/material.dart';

class GroupScreen extends StatefulWidget {
  String name;
  GroupScreen({super.key, required this.name});

  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Annonymous group"),
      ),
    );
  }
}
