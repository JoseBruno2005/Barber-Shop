import 'package:barbeariaflutter/pages/agendamento_page.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:flutter/material.dart';

class barbaBigode extends StatefulWidget {
  const barbaBigode({super.key});

  @override
  State<barbaBigode> createState() => _barbaBigodeState();
}

class _barbaBigodeState extends State<barbaBigode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353C3F),
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 108),
            child: IconButton(onPressed: (){
              Navigator.push(context, 
                MaterialPageRoute(builder: (context) => Home(),)
              );
            },
            icon: const Icon(Icons.house,
            color: Color(0xFFFFFFFF),
            size: 35,
            )),
          ),

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
            padding: EdgeInsets.only(top: 30, right: 250),
            child: Text(
              'BARBA E',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD6F3FF)
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 265),
            child: Text(
              'BIGODE',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFAD9472)
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 35),
            child: Image(image: 
            AssetImage('assets/barba.jpg')
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 152),
            child: Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF4B5D65),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Corte na tesoura',
                        style: TextStyle(
                          color: Color(0xFFD6F1FD),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Text(
                      ' RS15',
                      style: TextStyle(
                        color: Color(0xFFAD9472),
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Color(0xFFD6F1FD),
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 138,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => agendamento(),) //se o usuario clicar nesse butão deve ser mandado o nome do serviço para a pagina agendamento nesse caso serri corte na tesoura
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF000000),
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                          child: const Text(
                            'Agendar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Color(0xFFD6F1FD),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                    )
                  ],
                                ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Corte Degrade',
                        style: TextStyle(
                          color: Color(0xFFD6F1FD),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Text(
                      ' RS20',
                      style: TextStyle(
                        color: Color(0xFFAD9472),
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Color(0xFFD6F1FD),
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:8, left: 30),
                      child: Container(
                        width: 138,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, 
                              MaterialPageRoute(builder: (context) => agendamento(),)
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF000000),
                            alignment: Alignment.center,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                          ),
                          child: const Text(
                            'Agendar',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Color(0xFFD6F1FD),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}