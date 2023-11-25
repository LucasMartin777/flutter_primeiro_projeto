// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
    ContainerPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:  Text('Exemplo de Container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          padding: EdgeInsets.all(40),
          child: Center(
            child: Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 111, 146),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(10, 10)),
                    BoxShadow(
                        color: Colors.green,
                        blurRadius: 10,
                        offset: Offset(10, 10))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
