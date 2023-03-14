import 'package:flutter/material.dart';
import 'package:rpn/main.dart';

import 'commands.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = StateProvider.of(context);
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("${provider.state.registry}",
              textAlign: TextAlign.right, style: TextStyle(fontSize: 30)),
          Text(provider.number,
              textAlign: TextAlign.right, style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
