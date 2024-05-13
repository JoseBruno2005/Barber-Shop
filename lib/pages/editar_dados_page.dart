import 'package:barbeariaflutter/pages/alterar_senha_page.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EditarDadosPage extends StatefulWidget {
  const EditarDadosPage({super.key});

  @override
  State<EditarDadosPage> createState() => _EditarDadosPageState();
}

  TextEditingController _nomeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();


class _EditarDadosPageState extends State<EditarDadosPage> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: tema().corDeFundo,
      

       appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text("Editar Perfil",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF000000),

      ),

      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      
         Padding(
             padding: EdgeInsets.all(8),
            child: Text(
              'Alterar Nome:',
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
                controller: _nomeController,
                decoration: InputDecoration(
                  prefixIcon:  Icon(
                    Icons.person,
                    color: tema().corIcones,
                  ),
                  hintText: "Digite seu novo nome",
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
              'Alterar Email:',
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
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon:  Icon(
                    Icons.email,
                    color: tema().corIcones,
                  ),
                  hintText: "Digite seu novo email",
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
              'Alterar Telefone:',
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
                controller: _telefoneController,
                decoration: InputDecoration(
                  prefixIcon:  Icon(
                    Icons.call_outlined,
                    color: tema().corIcones,
                  ),
                  hintText: "Digite seu novo telefone",
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
              prefs.setString(tema().email, _emailController.text);
              prefs.setString(tema().nome, _nomeController.text);
              prefs.setString(tema().telefone, _telefoneController.text);     
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => perfilPage(),)
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF000000)
              ),
              child: const Text('Salvar novos dados',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              )
              ),
            ),
          ),

            Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
               width: largura-32,
              height: 50,
              child: ElevatedButton(onPressed: (){
                 
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => AlterarSenhaPage(),)
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF000000)
              ),
              child: const Text('Alterar senha',
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