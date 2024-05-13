import 'package:barbeariaflutter/pages/login_page.dart';
import 'package:flutter/material.dart';

class Cadastra extends StatefulWidget {
  const Cadastra({super.key});

  @override
  State<Cadastra> createState() => _cadastraState();
}

class _cadastraState extends State<Cadastra> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353C3F),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Nome:',
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
                  Icons.person,
                  color: Color(0xFFD6F1FD),
                ),
                hintText: "Digite seu nome",
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
                hintText: "Digite seu email",
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

          const Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Telefone:',
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
                  Icons.call_outlined,
                  color: Color(0xFFD6F1FD),
                ),
                hintText: "Telefone",
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
            padding: const EdgeInsets.only(left: 200, top: 8),
            child: Row(
              children: [
                const Text(
                  'Já tem conta?',
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
                        MaterialPageRoute(builder: (context) => loginPage(),));
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
                    child: Text('Entrar'), 
                  ),
                ),
              ],
            ),
          ),

           Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              width: 320,
              height: 50,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => loginPage(),)
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF000000)
              ),
              child: const Text('Cadastre-se',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              )
              ),
            ),
          )
        ],
      ),
    );
  }
}