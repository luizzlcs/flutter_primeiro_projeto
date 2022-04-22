import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_primeiro_projeto/pages/cidades/modelo/cidade.dart';

class CidadePage extends StatefulWidget {
  const CidadePage({Key? key}) : super(key: key);

  @override
  _CidadePageState createState() => _CidadePageState();
}

class _CidadePageState extends State<CidadePage> {
  var cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    _loadCities();
  }

  Future<void> _loadCities() async {
    final cidadesJson = await rootBundle.loadString('assets/json/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesJson);
      cidades =
          cidadesList.map<Cidade>((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          var cidade = cidades[index];
          return ListTile(
            title: Text(cidade.cidade),
            subtitle: Text(cidade.estado),
          );
        },
      ),
    );
  }
}
