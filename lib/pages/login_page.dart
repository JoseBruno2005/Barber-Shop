import 'package:barbeariaflutter/pages/cadastrar_page.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
bool _obscureText = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tema().corDeFundo,
      body: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(top: 40, bottom: 5),
            child: Image(
              image: AssetImage('assets/Logo_Barbearia_ilustrado_sem-titulo.png')
            ),
          ),

           Padding(
            padding: EdgeInsets.only(right: 200),
            child: Text(
              'Email:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Container(
            width: 320,
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
                hintText: "Digite seu e-mail",
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
                color: tema().corIcones,
              ),
            ),
          ),

          Container(
            width: 320,
            height: 50,
            decoration: BoxDecoration(
              color: tema().azulCampoTexto,
              borderRadius: BorderRadius.circular(20)
            ),
            child: TextField(
              controller: _senhaController,
              obscureText: _obscureText,
              decoration: InputDecoration(
                prefixIcon:  Icon(
                  Icons.lock,
                  color: tema().corIcones,
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

                hintText: "Digite sua senha",
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
            padding: EdgeInsets.only(left: 150, top: 8),
            child: Row(
              children: [
                 Text(
                  'Não Tem Conta?',
                  style: TextStyle(
                    fontSize: 15,
                    color: tema().corTextoAzul
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
                      minimumSize: Size(0, 0), backgroundColor: Colors.transparent,
                      padding: EdgeInsets.zero, 
                      elevation: 0, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0), 
                        side: BorderSide.none, 
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
              child: ElevatedButton(onPressed: ()async{

                try {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              String email = prefs.getString(tema().email)!;
              String senha = prefs.getString(tema().senha)!;

                bool emailCorreto =_emailController.text==email;
                bool senhaCorreta = _senhaController.text==senha;
                if( senhaCorreta && emailCorreto ){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home())); 
                }
              } on Exception catch (e) {
                //
              }

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