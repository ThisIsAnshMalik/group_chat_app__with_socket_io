import 'package:flutter/material.dart';
import 'package:group_chat_app__with_socket_io/view/group_chat/group_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group Chat App"),
      ),
      body: Center(
        child: TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Center(child: Text("Enter Your Name")),
                      content: TextFormField(),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (_) {
                                return const GroupScreen();
                              }));
                            },
                            child: const Text("Enter"))
                      ],
                    );
                  });
            },
            child: const Text(
              "Start Group Chat",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )),
      ),
    );
  }
}
