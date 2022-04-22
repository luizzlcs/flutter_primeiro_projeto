import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';

class FormsPages extends StatefulWidget {
  const FormsPages({Key? key}) : super(key: key);

  @override
  State<FormsPages> createState() => _FormsPagesState();
}

class _FormsPagesState extends State<FormsPages> {
  //String texto = '';
  final formkey = GlobalKey<FormState>();
  final nameEC = TextEditingController();

  String categoria = 'Categoria 1';

  bool obscurePassword = true;

  String email = 'E-mail';
  String senha = 'Senha';

  @override
  // Discarta as informações dos controladores afim de liberar a memória alocada.
  void dispose() {
    nameEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulários'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                /* TextField(
                  onChanged: (String value) {
                    setState(
                      () {
                        texto = value;
                      },
                    );
                  },
                ), */

                TextFormField(
                  maxLines: null, // Quebra a linha automáticamente.
                  // maxLines: 10, // Cria um espaço para 10 linhas.

                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    labelText: email,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.brown[70],
                      fontSize: 22,
                    ),
                    helperText: 'Digite seu nome aqui',
                    isDense:
                        true, // Deixa o campo do formulário um pouco mais magrinho.
                  ),

                  controller: nameEC,

                  autovalidateMode: AutovalidateMode
                      .onUserInteraction, //acionado quando é feito
                  // alguma interação nos campos.

                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return '  O campo $email não foi preenchido!';
                    }
                    
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.key),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                      icon: const Icon(Icons.visibility),
                    ),
                    labelText: senha,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),

                    helperText: 'Digite seu nome aqui',
                    isDense:
                        true, // Deixa o campo do formulário um pouco mais magrinho.
                  ),

                  obscureText: obscurePassword,
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode
                      .onUserInteraction, //acionado quando é feito
                  // alguma interação nos campos.

                  validator: (String? value){
                    if (value == null || value.isEmpty) {
                      return 'O campo $senha não foi preenchido!';
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                DropdownButtonFormField(
                  value: categoria,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Categoria não preenchida!';
                    }
                  },
                  decoration: InputDecoration(
                    labelText: senha,
                    prefixIcon: const Icon(Icons.menu_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 2,
                      ),
                    ),

                    helperText: 'Digite seu nome aqui',
                    isDense:
                        true, // Deixa o campo do formulário um pouco mais magrinho.
                  ),
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      setState(() {
                        categoria = newValue;
                      });
                    }
                  },
                  items: const [
                    DropdownMenuItem(
                      child: Text('Categoria 1'),
                      value: 'Categoria 1',
                    ),
                    DropdownMenuItem(
                      child: Text('Categoria 2'),
                      value: 'Categoria 2',
                    ),
                    DropdownMenuItem(
                      child: Text('Categoria 3'),
                      value: 'Categoria 4',
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formkey.currentState?.validate() ?? false;
                    var menssagem = 'Fomrulário inválido';
                    if (formValid) {
                      menssagem = 'Formulário Válid!  (Nome: ${nameEC.text})';
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(menssagem),
                      ),
                    );
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
