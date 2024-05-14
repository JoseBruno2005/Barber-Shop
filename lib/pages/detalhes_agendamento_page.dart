import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetalhesAgendamentoPage extends StatefulWidget {
  const DetalhesAgendamentoPage({super.key});

  @override
  State<DetalhesAgendamentoPage> createState() => _DetalhesAgendamentoPageState();
}

 Future<String> carregarDados(String dado) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(dado=="corteAtual"){
    String data = prefs.getString("corteAtual")!;
    return data;
    }else if(dado=="diaMesAgendado"){
    String data = prefs.getString("diaMesAgendado")!;
    return data;
    }else if(dado=="horaMinutoAgendado"){
    String data = prefs.getString("horaMinutoAgendado")!;
    return data;
    }else if(dado=="tipoCorte"){
    String data = prefs.getString("tipoCorte")!;
    return data;
    }else return "erro";
  }

class _DetalhesAgendamentoPageState extends State<DetalhesAgendamentoPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
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

      body: Column(children: [
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
              height: 200,
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
                        'Categoria:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFD6F2FF)
                        )
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 10, left: 30),
                      child: FutureBuilder<String>(
          future: carregarDados("tipoCorte"),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                 color: tema().corTextoMarrom,
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,
                    )
                  ],
                ),

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
                      child: FutureBuilder<String>(
          future: carregarDados("corteAtual"),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                 color: tema().corTextoMarrom,
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,
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
                          child: FutureBuilder<String>(
          future: carregarDados("diaMesAgendado"),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                  color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,
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
                          child: FutureBuilder<String>(
          future: carregarDados("horaMinutoAgendado"),
          builder: ((context, snapshot){
            return Text('  ${snapshot.data}',
            style: TextStyle(
                  color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                ),);
          }),

        ) ,
                        ),
                      ),
                    )
                  ],
                ),
              ],
              ),
            ),
          ),
      ],),

    );
  }
}