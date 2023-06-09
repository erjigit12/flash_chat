import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/messages/send_message.dart';
import '../../../components/messages/stream_message.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => <PopupMenuEntry>[
              PopupMenuItem(
                onTap: () async {
                  await controller.logOut();
                },
                child: const Text('Log out'),
              ),
              PopupMenuItem(
                onTap: () async {
                  await controller.delete();
                },
                child: const Text('Delete'),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          StreamMessage(controller.steamMessage()),
          SendMessage(
            onPressed: () async => controller.sendMessage(),
            controller.textController,
          ),
        ],
      ),
    );
  }
}
