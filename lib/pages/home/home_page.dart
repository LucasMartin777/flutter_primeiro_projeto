import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layoutBuilder,
  botoesRotacaoTexto,
  singlechildscrollview,
  listview,
  dialogs,
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            icon: Icon(Icons.restaurant_menu),
            color: Colors.white,
            tooltip: 'Selecione um Item do menu',
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rows_columns:
                  Navigator.of(context).pushNamed('/rows_columns');
                  break;
                case PopupMenuPages.media_query:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                case PopupMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layoutBuilder');
                  break;
                case PopupMenuPages.botoesRotacaoTexto:
                  Navigator.of(context).pushNamed('/botoesRotacaoTexto');
                  break;
                  case PopupMenuPages.singlechildscrollview:
                  Navigator.of(context).pushNamed('/scrolls/single_child');
                  break;
                  case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/scrolls/list_view');
                  break;
                  case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rows_columns,
                  child: Text('Rows & Column'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.media_query,
                  child: Text('MediaQuery'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutBuilder,
                  child: Text('LayoutBuilder'),
                ),
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesRotacaoTexto,
                  child: Text('Botoes & RotacaoTexto'),
                ),PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singlechildscrollview,
                  child: Text('Singlechildscrollview'),
                ),PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listview,
                  child: Text('ListView'),
                ),PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
              ];
            },
          )
        ],
      ),
    );
  }
}
