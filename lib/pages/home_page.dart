import 'package:barbeariaflutter/pages/agendamento_page.dart';
import 'package:barbeariaflutter/pages/barba_bigode_page.dart';
import 'package:barbeariaflutter/pages/corte_tradicional.dart';
import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 300),
            child: Text(
              'OLÁ,',
              style: TextStyle(
                color: Color(0xFFD6F2FF),
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 250),
            child: Text(
              '{{nome cliente}}',
              style: TextStyle(
                color: Color(0xFFAD9472),
                fontSize: 35,
                fontWeight: FontWeight.w900
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset('assets/barbeariahome.jpg'),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 10, right: 270),
            child: Text(
              'Serviços:',
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFFD6F2FF),
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
                  backgroundColor: Color(0xFF16191A),
                  minimumSize: Size(100, 110)
                  ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFD6F3FF), // Cor padrão para o texto
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'CORTE\n',
                          ),
                          TextSpan(
                            text: 'TRADICIONAL',
                            style: TextStyle(
                              color: Color(0xFFAD9472)
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
                  backgroundColor: Color(0xFF16191A),
                  minimumSize: Size(170, 110)
                  ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFD6F3FF),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'BARBA \nE',
                          ),
                          TextSpan(
                            text: ' BIGODE',
                            style: TextStyle(
                              color: Color(0xFFAD9472)
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
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => agendamento(),));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: Color(0xFF16191A),
                  minimumSize: Size(180, 110)
                  ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFD6F3FF), // Cor padrão para o texto
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'LIMPEZA \nDE',
                          ),
                          TextSpan(
                            text: ' PELE',
                            style: TextStyle(
                              color: Color(0xFFAD9472)
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => agendamento(),));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  backgroundColor: Color(0xFF16191A),
                  minimumSize: Size(170, 110)
                  ),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Color(0xFFD6F3FF),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'SERVIÇO DE\n',
                          ),
                          TextSpan(
                            text: ' SOBRANCELHA',
                            style: TextStyle(
                              color: Color(0xFFAD9472)
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