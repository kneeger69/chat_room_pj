import 'package:chat_room_pj/Screens/PageLogin.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildNavigateButton(context, title: "Login", destination: const PageLogin()),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavigateButton(BuildContext context, {required String title, required Widget destination}) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => destination,)
        );
      },
          child: Text(title)
      ),
    );
  }
}
