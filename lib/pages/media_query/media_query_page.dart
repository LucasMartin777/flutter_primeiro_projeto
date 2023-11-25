import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaMediaQuery = MediaQuery.of(context);

    var appBar = AppBar(
      title: const Text('MediaQuery'),
      backgroundColor: Colors.green,
    );

    final statusBar = mediaMediaQuery.padding.top;
    final heightBody = mediaMediaQuery.size.height - statusBar - kToolbarHeight;

    print('Tamanho AppBar ${appBar.preferredSize.height}');

    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.yellowAccent,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            color: Colors.red,
            width: mediaMediaQuery.size.width* .50,
            height: heightBody * .50,
          ),
          Container(
            color: Colors.blue,
            width: mediaMediaQuery.size.width ,
            height: heightBody * .50,
          ),
        ],
      )),
    );
  }
}
