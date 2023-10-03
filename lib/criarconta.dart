import 'package:flutter/material.dart';

import '_comum/Meu_snackbar.dart';
import 'servico/autenticacao_servico.dart';

class CriarConta extends StatefulWidget {
  const CriarConta({super.key});

  @override
  State<CriarConta> createState() => _CriarConta();
}

class _CriarConta extends State<CriarConta> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaSenhaController =
      TextEditingController();

  AutenticacaoServico _autenticacaoServico = AutenticacaoServico();

  bool conferiuSenha = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar conta"),
        backgroundColor: Colors.green,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Container(
          color: const Color(0xFF64EA61),
          padding: const EdgeInsets.only(
            top: 60,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: <Widget>[
              /*SizedBox(
                width: 300,
                height: 300,
                child: Text()
              ),*/
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Crie sua conta aqui!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _nomeController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "O nome não pode ser vazio";
                  }
                  final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
                  if (!nameExp.hasMatch(value)) {
                    return "Por favor, insira um nome válido";
                  }
                  return null;
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Nome:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _emailController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return "O e-mail não pode ser vazio";
                  }
                  /*if (value.length < 5) {
                    return "O e-mail é muito curto";
                  }*/
                  final emailRegExp = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
                  if (!emailRegExp.hasMatch(value)) {
                    return 'E-mail inválido';
                  }

                  return null;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Email:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _senhaController,
                validator: (String? value) {
                  if (value == null) {
                    return "A senha não pode ser vazia";
                  }
                  if (value.length < 8) {
                    return "A senha é muito curta";
                  }

                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "senha:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _confirmaSenhaController,
                validator: (String? value) {
                  if (value != _senhaController.text) {
                    return 'As senhas não coincidem';
                  }
                  /*if (_senhaController.text != _confirmaSenhaController.text) {
                    return "As senhas estão diferentes";
                  }*/
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Confirmar senha:",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [
                        0.3,
                        1
                      ],
                      colors: [
                        Color.fromARGB(255, 71, 201, 108),
                        Color(0xFF4DB64B)
                      ]),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () => {
                      CriarContaBotao(),
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Criar conta",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  CriarContaBotao() {
    if (_formkey.currentState!.validate()) {
      String nome = _nomeController.text;
      String email = _emailController.text;
      String senha = _senhaController.text;
      print("valeu");
      print(
        "${_nomeController.text},"
        "${_emailController.text},"
        "${_senhaController.text},",
      );
      if (_senhaController.text == _confirmaSenhaController.text) {
        _autenticacaoServico
            .cadastrarUsuario(nome: nome, senha: senha, email: email)
            .then(
          (String? erro) {
            if (erro != null) {
              mostrarSnackbar(context: context, texto: erro);
            } else {
              mostrarSnackbar(
                  context: context,
                  texto: 'Cadastro realizado com sucesso',
                  isErro: false);
            }
          },
        );
      } else {
        mostrarSnackbar(context: context, texto: 'As senhas não coincidem');
      }
    } else {
      print('valeu nao');
    }
  }
}
