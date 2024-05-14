import 'package:barbeariaflutter/pages/agendamento_page.dart';
import 'package:barbeariaflutter/pages/barba_bigode_page.dart';
import 'package:barbeariaflutter/pages/corte_tradicional.dart';
import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

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
      backgroundColor: Color(0xFF353C3F),
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: IconButton(onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => perfilPage(),)
              );
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xFF353C3F))
            ), 
            icon: const Icon(Icons.person,
            color: Color(0xFF000000),
            size: 30,
            )
            ),
          )
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 2),
              child: Text(
                  'OLÁ,',
                  style: TextStyle(
                    color: tema().corTextoAzul,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start,
                ),
            ),
          
          
            Padding(
             padding: const EdgeInsets.only(top: 8,left: 2),
             child: FutureBuilder<String>(
          future: carregarDados(tema().nome),
          builder: ((context, snapshot){
            return Text('${snapshot.data}'+".",
            style: TextStyle(
                  color: tema().corTextoMarrom,
                  fontSize: 25,
                  fontWeight: FontWeight.w900
                ),);
          }),
        ) ,
           ),
          
          
         Padding(
  padding: const EdgeInsets.all(16),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10), 
    child: Image.asset(
      tema().imagemHome,
      height: 200,
      width: largura - 24,
      fit: BoxFit.cover, 
    ),
  ),
),


             Padding(
               padding: const EdgeInsets.only(top: 8,left: 2),
               child: Text(
                'Serviços:',
                style: TextStyle(
                  fontSize: 30,
                  color: tema().corTextoAzul,
                  fontWeight: FontWeight.w500
                ),
                           ),
             ),
          

          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => corteTradicional(),));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: tema().pretoBotoes,
                  minimumSize: Size(80, 80)
                  ),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: tema().corTextoAzul,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'CORTE\n',
                          ),
                          TextSpan(
                            text: 'TRADICIONAL',
                            style: TextStyle(
                              color: tema().corTextoMarrom
                            )
                          )
                        ]
                      )
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => barbaBigode(),));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: tema().pretoBotoes,
                  minimumSize: Size(80, 80)
                  ),
                    child: RichText(
                      text:  TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: tema().corTextoAzul,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'BARBA \nE',
                          ),
                          TextSpan(
                            text: ' BIGODE',
                            style: TextStyle(
                              color: tema().corTextoMarrom
                            )
                          )
                        ]
                      )
                      ),
                  ),
                )
                
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 15),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: ()async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString("corteAtual", "Limpeza de pele");
                            prefs.setString("tipoCorte", "Especial");
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => agendamento(),) 
                            );
                   
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: tema().pretoBotoes,
                  minimumSize: Size(80, 80)
                  ),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: tema().corTextoAzul, 
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'LIMPEZA \nDE',
                          ),
                          TextSpan(
                            text: ' PELE',
                            style: TextStyle(
                              color: tema().corTextoMarrom
                            )
                          )
                        ]
                      )
                      ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: ()async{
                      SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString("corteAtual", "Sobrancelha");
                            prefs.setString("tipoCorte", "Especial");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => agendamento(),));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: tema().pretoBotoes,
                  minimumSize: Size(80, 80)
                  ),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: tema().corTextoAzul,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'SERVIÇO DE\n',
                          ),
                          TextSpan(
                            text: ' SOBRANCELHA',
                            style: TextStyle(
                              color: tema().corTextoMarrom
                            )
                          )
                        ]
                      )
                      ),
                  ),
                )
                
              ],
            ),
          )
        ],
      )
    );
  }
}