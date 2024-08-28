import 'package:flutter/material.dart';
import '../core/all_file.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          MyTextField(controller: myController)
        ],
      ),
      floatingActionButton: Flexible(
        child: FloatingActionButton(
            onPressed: () {},
            shape: const OvalBorder(),
            backgroundColor: Colors.blue,
            child: const Image(image: AssetImage('assets/t2.png'))),
      ),
    );
  }
}
