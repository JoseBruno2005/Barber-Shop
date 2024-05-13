import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/pages/editar_dados_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class perfilPage extends StatefulWidget {
  const perfilPage({super.key});

  @override
  State<perfilPage> createState() => _perfilPageState();
}

class _perfilPageState extends State<perfilPage> {

 Future<String> carregarDados(String dado) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(dado=="nome"){
    String data = prefs.getString(tema().nome)!;
    return data;
    }else if(dado=="email"){
    String data = prefs.getString(tema().email)!;
    return data;
    }else if(dado=="telefone"){
    String data = prefs.getString(tema().telefone)!;
    return data;
    }else return "erro";
  }

  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      
      backgroundColor: tema().corDeFundo,
      appBar: AppBar(
        
        backgroundColor: Color(0xFF000000),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 180),
            child: IconButton(onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Home(),)
              );
            },
            
            icon: const Icon(Icons.house,
            color: Color(0xFFFFFFFF),
            size: 35,
            )
            ),
          ),
        ]
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'SEU PERFIL:',
              style: TextStyle(
                color: Color(0xFFD6F2FF),
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),

               Padding(
                 padding: const EdgeInsets.all(8.0),
                child: Text('Nome:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD6F2FF)
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(8),
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF5C7884),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(children: [
                      Icon(
                        Icons.abc,
                        color: Color(0xFFAD9472),
                        size: 50,
                      ),
                      Container(child: FutureBuilder<String>(
          future: carregarDados(tema().nome),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                  color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,)

                    ],
                    )
                  ),
              ),


             
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text('Telefone:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFD6F2FF)
                      ),
                      textAlign: TextAlign.start,
                    ),
                 ),
                
                Padding(
               padding:  EdgeInsets.all(8),
                  child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF5C7884),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.call_outlined,
                          color: Color(0xFFAD9472),
                          size: 40,
                        ),
                       Container(child: FutureBuilder<String>(
          future: carregarDados(tema().telefone),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                  color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,)
                      ],
                      )
                    ),
                ),

     

                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Email:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD6F2FF)
                    ),
                  ),
                ),
                Padding(
                 padding:  EdgeInsets.all(8),
                  child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF5C7884),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(children: [
                        Icon(
                          Icons.alternate_email,
                          color: Color(0xFFAD9472),
                          size: 40,
                        ),
                        Container(child: FutureBuilder<String>(
          future: carregarDados(tema().email),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                  color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,)
                      ],
                      )
                    ),
                ),
    
         Padding(
            padding:  EdgeInsets.all(16),
            child: Container(
               width: largura-32,
              height: 50,
              child: ElevatedButton(onPressed: (){
               
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => EditarDadosPage(),)
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF000000)
              ),
              child: const Text('Editar Perfil',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              )
              ),
            ),
          )


         /*
           Padding(
            padding: EdgeInsets.only(top: 25, right: 50),
            child: Text(
              'HISTÓRICO DE SERVIÇOS:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD6F2FF)
              )
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(left: 30),
            child: Container(
              width: 300,
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xFF4B5D65),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(children: [
                 Row(
                  children: [
                     Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Serviço:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD6F2FF)
                        )
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10, left: 30),
                      child: Text(
                        '{{NOME DO SERVIÇO }}',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD6F2FF)
                        )
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                      Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Data:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD6F2FF)
                        )
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10, left: 100),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(top: 8, left: 15),
                          child: Text(
                            '{{DATA}}',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD6F2FF)
                          )
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                      Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        'Horário:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD6F2FF)
                        )
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10, left: 75),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.only(top: 8, left: 10),
                          child: Text(
                            '{{horario}}',
                            style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD6F2FF)
                          )
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.only(top: 100, left: 280),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFCCCCCC)
              ),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => mudarSenha(),));
              }, 
              icon:  Icon(Icons.create,
                color: Color(0xFFAD9472),
                size: 30,
              )
              ),
            ),
          )
      */
        ],
      ),
    );
  }
}