import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/pages/mudar_senha_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class perfilPage extends StatefulWidget {
  const perfilPage({super.key});

  @override
  State<perfilPage> createState() => _perfilPageState();
}

class _perfilPageState extends State<perfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353C3F),
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
        children: [
          const Padding(
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
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 240),
                child: Text('Nome:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFD6F2FF)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF5C7884),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child:const Row(children: [
                      Icon(
                        Icons.abc,
                        color: Color(0xFFAD9472),
                        size: 50,
                      ),
                      Text(
                        '{{NOME SHARED PREFERENCE}}',
                        style: TextStyle(
                          color: Color(0xFFD6F2FF),
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),
                      )
                    ],
                    )
                  ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 220),
                  child: Text('Telefone:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD6F2FF)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF5C7884),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child:const Row(children: [
                        Icon(
                          Icons.call_outlined,
                          color: Color(0xFFAD9472),
                          size: 40,
                        ),
                        Text(
                          '{{TELEFONE SHAREDPREFERENCE}}',
                          style: TextStyle(
                            color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                      )
                    ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text('Email:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD6F2FF)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                      width: 350,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFF5C7884),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child:const Row(children: [
                        Icon(
                          Icons.alternate_email,
                          color: Color(0xFFAD9472),
                          size: 40,
                        ),
                        Text(
                          '{{EMAIL  SHAREDPREFERENCE}}',
                          style: TextStyle(
                            color: Color(0xFFD6F2FF),
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                      )
                    ),
                )
              ],
            ),
          ),

          const Padding(
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
            padding: const EdgeInsets.only(left: 30),
            child: Container(
              width: 300,
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xFF4B5D65),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(children: [
                const Row(
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
                      padding: const EdgeInsets.only(top: 10, left: 30),
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
                     const Padding(
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
                      padding: const EdgeInsets.only(top: 10, left: 100),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.only(top: 8, left: 15),
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
                     const Padding(
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
                      padding: const EdgeInsets.only(top: 10, left: 75),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF000000),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Padding(
                          padding: const EdgeInsets.only(top: 8, left: 10),
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
            padding: const EdgeInsets.only(top: 100, left: 280),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFCCCCCC)
              ),
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => mudarSenha(),));
              }, 
              icon: const Icon(Icons.create,
                color: Color(0xFFAD9472),
                size: 30,
              )
              ),
            ),
          )
        ],
      ),
    );
  }
}