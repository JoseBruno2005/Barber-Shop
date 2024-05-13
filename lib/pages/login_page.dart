import 'package:barbeariaflutter/pages/cadastrar_page.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353C3F),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40, bottom: 5),
            child: Image(
              image: AssetImage('assets/Logo_Barbearia_ilustrado_sem-titulo.png')
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              'Email:',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFFD6F1FD)
              ),
            ),
          ),

          Container(
            width: 320,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF4B5D65),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color(0xFFD6F1FD),
                ),
                hintText: "Digite seu e-mail",
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF677B83)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Senha:',
              style: TextStyle(
                fontSize: 22,
                color: Color(0xFFD6F1FD)
              ),
            ),
          ),

          Container(
            width: 320,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xFF4B5D65),
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xFFD6F1FD),
                ),
                hintText: "Digite sua senha",
                hintStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF677B83)
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 8),
            child: Row(
              children: [
                const Text(
                  'Não Tem Conta?',
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFFD6F1FD)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => Cadastra(),));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(0, 0), backgroundColor: Colors.transparent, // Remove o tamanho mínimo do botão, deixa-lo transparente
                      padding: EdgeInsets.zero, // Remove o preenchimento interno do botão
                      elevation: 0, // Define o fundo do botão como transparente
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), // Remove o arredondamento do botão
                        side: BorderSide.none, // Remove a borda do botão
                      ),
                    ),
                    child: Text('Cadastrar'), 
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Container(
              width: 320,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => Home(),)
                );
              }, 
              child: const Text(
                'Login',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black
                )
                )
              ),
            ),
          )
        ],
      ),
        
    );
  }
}