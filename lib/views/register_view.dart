import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:developer' as devtools show log;

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

// appBar: AppBar(
//         title: const Text("Cadastro"),
//         backgroundColor: const Color.fromRGBO(0x14, 0xb8, 0xa6, 1.0),
//         titleTextStyle: const TextStyle(
//           color: Colors.white,
//           fontSize: 20.0,
//           fontWeight: FontWeight.w600,
//           letterSpacing: 0.5,
//         ),
//       ),

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose(); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        backgroundColor: const Color.fromRGBO(0x14, 0xb8, 0xa6, 1.0),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            enableSuggestions: false,
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Coloque seu e-mail aqui",
            ),
          ),
          TextField(
            controller: _password,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Coloque sua senha aqui",
            ),
          ),
          TextButton(
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                final userCredential = await FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                        email: email, password: password);
                devtools.log(userCredential.toString());
              } on FirebaseAuthException catch (e) {
                if (e.code == "weak-password") {
                  devtools.log("Senha muito fraca");
                } else if (e.code == "email-already-in-use") {
                  devtools.log("Email já está sendo usado");
                } else if (e.code == "invalid-email") {
                  devtools.log("E-mail inválido");
                }
              }
            },
            child: const Text("Registrar"),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/login/", (route) => false);
              },
              child: const Text("Já tem uma conta?"))
        ],
      ),
    );
  }
}
