import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/bottom_barNavigator2.dart';
import 'package:flutter_primeiro_projeto/pages/botton_navigator/botton_navigator_bar_Page.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/cidade_page.dart';
import 'package:flutter_primeiro_projeto/pages/container/container_page.dart';
import 'package:flutter_primeiro_projeto/pages/dialog/dialogs_page.dart';
import 'package:flutter_primeiro_projeto/pages/forms/forms_pages.dart';
import 'package:flutter_primeiro_projeto/pages/home/home_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_primeiro_projeto/pages/layout_builder/layout_builder_page2.dart';
import 'package:flutter_primeiro_projeto/pages/material_banner/material_bannner_page.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query2.dart';
import 'package:flutter_primeiro_projeto/pages/media_query/media_query_page.dart';
import 'package:flutter_primeiro_projeto/pages/rows_coluns/rows_columns_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/listeview_page.dart';
import 'package:flutter_primeiro_projeto/pages/scrolls/single_childscrollview_page.dart';
import 'package:flutter_primeiro_projeto/pages/snackbar/sanckbar_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page.dart';
import 'package:flutter_primeiro_projeto/pages/stack/stack_page2.dart';

void main() {
  runApp(
    // PASSO 1: Configuração do Device View
    DevicePreview(
      enabled: false, //!kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Primeiro Projeto',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.blue,
        primaryColorDark: Colors.black38,
        primaryColorLight: Colors.red,
        fontFamily: 'Roboto',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(primary: Colors.red),
        ),
      ),

      // PASSO 2: Configuração do Device View
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,

      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/columns_rows': (context) => const RowsColumnsPage(),
        '/media_query': (context) => const MediaQueryPage(),
        '/media_query2': (context) => const MediaQuery2(),
        '/layout_builder': (context) => const LayoutBuilderPage(),
        '/layout_builder2': (context) => const LayoutBuilderPage2(),
        '/botoes_texto_rotacao': (context) => const BotoesRotacaoTextoPage(),
        '/single_child': (_) => const SingleChildscrollviewPage(),
        '/listview': (_) => const ListeviewPage(),
        '/dialogpage': (_) => const DialogsPage(),
        '/snack_bar': (_) => const SanckbarPage(),
        '/forms_page': (_) => const FormsPages(),
        '/cidades': (_) => const CidadePage(),
        '/stack': (_) => const StackPage(),
        '/stack2': (_) => const StackPage2(),
        '/bottonnavigator': (_) => const BottonNavigatorBarPage(),
        '/bottomnavigator2': (_) => const BottomBarnavigator2(),
        '/materialbanner': (_) => const MaterialBannerPage(),
      },
    );
  }
}
