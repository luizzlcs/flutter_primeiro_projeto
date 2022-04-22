import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://media.gettyimages.com/photos/buggy-ride-in-genipabu-beach-picture-id1301067646?s=2048x2048'))),
          ),
          Container(
            color: Colors.white24,
          ),
          Positioned(
            bottom: 40,
            right: 10,
            left: 10,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Genipabu',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 12,
                      left: 12,
                      top: 14,
                      bottom: 10,
                    ),
                    child: Text(
                        'A Praia de Genipabu, RN, é uma das paradas obrigatórias para quem visita Natal — e não é difícil entender o por quê. Principal atração turística da capital do Rio Grande do Norte, a praia tem dunas a perder de vista, lagoas, bons bares e contato direto com a natureza, com diversos passeios e aventuras à disposição do viajante.'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
