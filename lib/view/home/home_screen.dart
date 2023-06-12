import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:group_chat_app__with_socket_io/view/group_chat/group_screen.dart';
import 'package:group_chat_app__with_socket_io/view_model/home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _nameKey = GlobalKey<FormState>();
  final homeController = Get.put(HomeController());

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
                      content: Form(
                        key: _nameKey,
                        child: TextFormField(
                          controller: homeController.userNameController,
                          validator: (value) {
                            if (value!.isEmpty || value == "") {
                              return "Please Enter A Name";
                            }
                            return null;
                          },
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                        TextButton(
                            onPressed: () {
                              if (_nameKey.currentState!.validate()) {
                                Get.to(() => GroupScreen(
                                      name: homeController
                                          .userNameController.text
                                          .toString(),
                                    ));
                              }
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
