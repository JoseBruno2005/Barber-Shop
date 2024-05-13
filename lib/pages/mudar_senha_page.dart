import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class mudarSenha extends StatefulWidget {
  const mudarSenha({super.key});

  @override
  State<mudarSenha> createState() => _mudarSenhaState();
}

class _mudarSenhaState extends State<mudarSenha> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
              'Senha Antiga:',
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
                hintText: "Digite sua antiga senha",
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
              'Senha Nova:',
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
                hintText: "Digite sua nova senha",
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
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
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