import 'package:flutter/material.dart';

enum PopupMenuPages {
  containe,
  mediaQuery2,
  rowsColumns,
  mediaQuery,
  layoutbBuilder,
  layoutBuilder2,
  botoesTextoRotacao,
  singleChildScrolView,
  listView,
  dialogs,
  snackBar,
  formsPage,
  cidades,
  stack,
  stack2,
  bottonNavigatorBar,
  bottomNavigator2,
  materialbanner,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          actions: [
            PopupMenuButton<PopupMenuPages>(
              initialValue: PopupMenuPages.rowsColumns,
              tooltip: 'Configurações',
              color: Colors.grey[50],
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.containe:
                    Navigator.of(context).pushNamed('/container');
                    break;
                  case PopupMenuPages.mediaQuery2:
                    Navigator.of(context).pushNamed('/media_query2');
                    break;
                  case PopupMenuPages.rowsColumns:
                    Navigator.of(context).pushNamed('/columns_rows');
                    break;
                  case PopupMenuPages.mediaQuery:
                    Navigator.of(context).pushNamed('/media_query');
                    break;
                  case PopupMenuPages.layoutbBuilder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.layoutBuilder2:
                    Navigator.of(context).pushNamed('/layout_builder2');
                    break;
                  case PopupMenuPages.botoesTextoRotacao:
                    Navigator.of(context).pushNamed('/botoes_texto_rotacao');
                    break;
                  case PopupMenuPages.singleChildScrolView:
                    Navigator.of(context).pushNamed('/single_child');
                    break;
                  case PopupMenuPages.listView:
                    Navigator.of(context).pushNamed('/listview');
                    break;
                  case PopupMenuPages.dialogs:
                    Navigator.of(context).pushNamed('/dialogpage');
                    break;
                  case PopupMenuPages.snackBar:
                    Navigator.of(context).pushNamed('/snack_bar');
                    break;
                  case PopupMenuPages.formsPage:
                    Navigator.of(context).pushNamed('/forms_page');
                    break;
                  case PopupMenuPages.cidades:
                    Navigator.of(context).pushNamed('/cidades');
                    break;
                  case PopupMenuPages.stack:
                    Navigator.of(context).pushNamed('/stack');
                    break;
                  case PopupMenuPages.stack2:
                    Navigator.of(context).pushNamed('/stack2');
                    break;
                  case PopupMenuPages.bottonNavigatorBar:
                    Navigator.of(context).pushNamed('/bottonnavigator');
                    break;
                  case PopupMenuPages.bottomNavigator2:
                    Navigator.of(context).pushNamed('/bottomnavigator2');
                    break;
                  case PopupMenuPages.materialbanner:
                    Navigator.of(context).pushNamed('/materialbanner');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.containe,
                    child: Text('Container'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.mediaQuery,
                    child: Text('Media Query'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.mediaQuery2,
                    child: Text('Media Query 2'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rowsColumns,
                    child: Text('Rows e Colunas'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutbBuilder,
                    child: Text('Layout Builder'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layoutBuilder2,
                    child: Text('Layout Builder 2'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoesTextoRotacao,
                    child: Text('Botões erotação de texto'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.singleChildScrolView,
                    child: Text('Single Child ScrolView'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.listView,
                    child: Text('ListView'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.dialogs,
                    child: Text('Dialogs'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackBar,
                    child: Text('Snack Bar'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.formsPage,
                    child: Text('Formulários'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.cidades,
                    child: Text('Cidades'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack,
                    child: Text('Stack'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.stack2,
                    child: Text('Stack 2'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottonNavigatorBar,
                    child: Text('⌨BottomNavigator Bar'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.bottomNavigator2,
                    child: Text('BottomNavigator Bar 2'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.materialbanner,
                    child: Text('MaterialBanner'),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://media.gettyimages.com/photos/pro-picture-id1167493895?s=2048x2048'),
                ),
              ),
            ),
            Positioned(
              bottom: 75,
              left: 4,
              right: 4,
              child: Card(
                color: Colors.blueGrey,
                elevation: 8,
                shadowColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    '''       "Deus ajuda quem 
          senta e estuda!"     
                    ''',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )

        /* Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '💾',
              style: TextStyle(fontSize: 120),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              width: 290,
              height: 4,
            ),
          ],
        ),
      ), */
        );
  }
}
