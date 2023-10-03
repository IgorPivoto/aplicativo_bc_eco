import 'package:flutter/material.dart';
import 'package:flutter_app_bc_eco/_comum/Meu_snackbar.dart';
import 'package:flutter_app_bc_eco/servico/autenticacao_servico.dart';
import 'criarconta.dart';
import 'homepage.dart';
import 'redefinir_senha.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();

  AutenticacaoServico _autenticacaoServico = AutenticacaoServico();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF64EA61),
      /*appBar: AppBar(
        elevation: 10,
        //shadowColor: Colors.white,
        title: const Text("Bem vindo!"),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
      ),*/

      body: Form(
        key: _formkey,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.green,
                Color.fromARGB(255, 5, 255, 0),
                Color(0xFF64EA61),
              ],
            ),
          ),
          padding: const EdgeInsets.only(
            top: 10,
            left: 40,
            right: 40,
          ),
          child: ListView(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                height: 300, //256
                child: Image.asset("assets/imagemlogin.png"),
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
                height: 20,
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
                height: 20,
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
                obscureText: true,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: "Senha:",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CriarConta(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      "Cadrastre-se",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RedefinirSenha(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      "Recuperar senha",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
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
                      botaoLogarUsuario(),
                      /*showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('certo'),
                            content: const Text('O igor é um lindo'),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      ),*/
                      /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        ),*/
                      // _navigateToMenu(context),
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Entrar",
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  shadowColor: Colors.transparent,
                ),
                child: const Text(
                  "login google",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  botaoLogarUsuario() {
    if (_formkey.currentState!.validate()) {
      //String nome = _nomeController.text;
      String email = _emailController.text;
      String senha = _senhaController.text;
      //print("valeu");
      //print(
      //"${_nomeController.text},"
      "${_emailController.text},"
          "${_senhaController.text},";
      //);
      _autenticacaoServico
          .logarUsuario(
        senha: senha,
        email: email,
      )
          .then(
        (String? erro) {
          if (erro != null) //deu erro
          {
            mostrarSnackbar(
              context: context,
              texto: erro,
            );
          } else // deu certo
          {
            _ChamaMenu(context);
          }
        },
      );
    } else {
      // print("valeu nao");
    }
  }
}

void _ChamaMenu(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}
