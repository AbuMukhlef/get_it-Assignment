import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it_assignment/core/all_file.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
      ),
      body: Column(
        children: [
          const Divider(),
          const SizedBox(height: 300),
          MyTextField(controller: myController),
          MaterialButton(
              onPressed: () {
                print(myController.text);
              },
              child: const Text('Tweet')),
        ],
      ),
    );
  }
}
