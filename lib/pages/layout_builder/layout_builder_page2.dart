import 'package:flutter/material.dart';

class LayoutBuilderPage2 extends StatelessWidget {
  const LayoutBuilderPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder 2'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.black,
                //width: constraints.maxWidth,
                height: constraints.maxHeight * .5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: constraints.maxWidth * .2,
                    height: constraints.maxHeight * .5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(400),
                        color: Colors.pink),
                  ),
                  Container(
                    color: Colors.deepPurple,
                    width: constraints.maxWidth * .5,
                    height: constraints.maxHeight * .5,
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
