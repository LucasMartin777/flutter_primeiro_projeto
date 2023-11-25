import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        backgroundColor: Colors.green,
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.red,
            //thickness: 5,//controla o tamanho da linha vermelha no caso
          );
        },
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('ListView'),
            subtitle: Text('Flutter é top'),
            leading: CircleAvatar(backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbzaHC9SfKlPLmfYhPBO7TxVNhpyhngMHDfg&usqp=CAU')),
            //trailing: CircleAvatar(backgroundColor: Colors.black), final da linha
          );
        },
      ),
    );
  }
}
