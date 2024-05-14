import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AlterarSenhaPage extends StatefulWidget {
  const AlterarSenhaPage({super.key});

  @override
  State<AlterarSenhaPage> createState() => _AlterarSenhaPageState();
}
  bool _obscureText = true;
  bool _obscureTextNova = true;
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _senhaNovaController = TextEditingController();

class _AlterarSenhaPageState extends State<AlterarSenhaPage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(

       backgroundColor: tema().corDeFundo,
      

       appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Editar Senha",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF000000),

      ),

      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
         
           Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Senha atual:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             width: largura-8,
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
                  hintText: "Digite sua senha atual",
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
          ),

          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'Nova senha:',
              style: TextStyle(
                fontSize: 22,
                color: tema().corIcones
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
             width: largura-8,
              height: 50,
              decoration: BoxDecoration(
                color: tema().azulCampoTexto,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                obscureText: _obscureTextNova,
                controller: _senhaNovaController,
                decoration: InputDecoration(
                  prefixIcon:  Icon(
                    Icons.lock,
                    color: tema().corIcones,
                  ),
                                       suffixIcon: IconButton(
          icon: Icon(_obscureTextNova ? Icons.visibility : Icons.visibility_off, color: Color(0xFFD6F1FD),),
          onPressed: () {
            setState(() {
              if(_obscureTextNova==true){
                _obscureTextNova=false;
              }else{_obscureTextNova=true;}
            });
          },
        ),
                  hintText: "Digite sua nova senha",
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
          ),

         Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
               width: largura-32,
              height: 50,
              child: ElevatedButton(onPressed: ()async{
              SharedPreferences prefs = await SharedPreferences.getInstance();
             if(_senhaController.text==prefs.getString(tema().senha)){
              prefs.setString(tema().senha, _senhaNovaController.text);
               Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => perfilPage(),)
                );
             }
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF000000)
              ),
              child: const Text('Salvar nova senha',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              )
              ),
            ),
          ),

        ],
      ),

    );
  }
}