import 'package:barbeariaflutter/pages/login_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cadastra extends StatefulWidget {
  const Cadastra({super.key});

  @override
  State<Cadastra> createState() => _cadastraState();
}

class _cadastraState extends State<Cadastra> {
  bool _obscureText = true;

  
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: tema().corDeFundo,
      body: Column(
        children: [

             Image.asset('assets/Logo_Barbearia_ilustrado_Cinza-removebg-preview.png', 
             width: largura ,height: 200),

           Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Nome:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Container(
            width: largura-32,
            height: 50,
            decoration: BoxDecoration(
              color: tema().azulCampoTexto,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                prefixIcon:  Icon(
                  Icons.person,
                  color: tema().corIcones,
                ),
                hintText: "Digite seu nome",
                hintStyle:  TextStyle(
                  fontSize: 20,
                  color: tema().corTitulosCampos
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),

           Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Email:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Container(
            width: largura-32,
            height: 50,
            decoration: BoxDecoration(
              color: tema().azulCampoTexto,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon:  Icon(
                  Icons.email,
                  color: tema().corIcones,
                ),
                hintText: "Digite seu email",
                hintStyle:  TextStyle(
                  fontSize: 20,
                  color: tema().corTitulosCampos
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),


           Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Telefone:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Container(
           width: largura-32,
            height: 50,
            decoration: BoxDecoration(
              color: tema().azulCampoTexto,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              controller: _telefoneController,
              decoration: InputDecoration(
                prefixIcon:  Icon(
                  Icons.call_outlined,
                  color: tema().corIcones,
                ),
                hintText: "Telefone",
                hintStyle:  TextStyle(
                  fontSize: 20,
                  color: tema().corTitulosCampos
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none
                )
              ),
            ),
          ),

            Padding(
            padding: EdgeInsets.only(right: 200, top: 10),
            child: Text(
              'Senha:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Container(
            width: largura-32,
            height: 50,
            decoration: BoxDecoration(
              color: tema().azulCampoTexto,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              obscureText: _obscureText,
              controller: _senhaController,
              decoration: InputDecoration(
                prefixIcon:  Icon(
                  Icons.lock,
                  color: tema().corIcones,
                ),
                hintText: "Digite sua senha",
                hintStyle:  TextStyle(
                  fontSize: 20,
                  color: tema().corTitulosCampos
                ),

                     suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off, color: Color(0xFFD6F1FD),),
          onPressed: () {
            setState(() {
              if(_obscureText==true){
                _obscureText=false;
              }else{_obscureText=true;}
            });
          },
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
                 Text(
                  'Já tem conta?',
                  style: TextStyle(
                    fontSize: 15,
                    color: tema().corIcones
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
                      minimumSize: Size(0, 0), backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero, 
                      elevation: 0, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), 
                        side: BorderSide.none, 
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
               width: largura-32,
              height: 50,
              child: ElevatedButton(onPressed: ()async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString(tema().email, _emailController.text);
              prefs.setString(tema().senha, _senhaController.text); 
              prefs.setString(tema().nome, _nomeController.text);
              prefs.setString(tema().telefone, _telefoneController.text);     
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