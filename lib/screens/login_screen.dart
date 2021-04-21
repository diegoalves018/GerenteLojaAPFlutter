import 'package:flutter/material.dart';
import 'package:gerente_loja/widgets/input_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
        shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.store_mall_directory,
                    color: Colors.pinkAccent,
                    size: 160,
                  ),
                  InputField(
                    icon: Icons.person_outline,
                    hint: "Usuário",
                    obscure: false,
                  ),
                  InputField(
                    icon: Icons.lock_outline,
                    hint: "Senha",
                    obscure: true,
                  ),
                  SizedBox(height: 32.0,),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 215, 69, 85), // background
                        onPrimary: Colors.white, // foreground
                      ),
                      child: Text("Entrar"),
                      onPressed: (){},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
