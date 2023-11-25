import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LayoutBuilder'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: LayoutBuilder(builder: (context, cotraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.red,
                width: cotraints.maxWidth * .90,
                height: cotraints.maxHeight * .50,
              ),
              Container(
                color: Colors.blue,
                width: cotraints.maxWidth,
                height: cotraints.maxHeight * .50,
              ),
            ],
          );
        }),
      ),
    );
  }
}
