import 'package:flutter/material.dart';
import '../widgets/dropdown.dart';

class ConfigPage extends StatefulWidget {
  @override
  _ConfigPageState createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: DropdownMenuExample(),
          )
        ],
      ),
    );
  }
}
