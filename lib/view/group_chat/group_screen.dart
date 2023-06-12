import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GroupScreen extends StatefulWidget {
  String name;
  GroupScreen({super.key, required this.name});
  @override
  State<GroupScreen> createState() => _GroupScreenState();
}

class _GroupScreenState extends State<GroupScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Annonymous group"),
      ),
      body: Column(
        children: [
          Expanded(child: Container()),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.02),
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.03, vertical: size.height * 0.01),
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              children: [
                SizedBox(
                  width: size.width * 0.04,
                ),
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Type here...",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send))
              ],
            ),
          )
        ],
      ),
    );
  }
}
