import 'package:barbeariaflutter/pages/agendamento_page.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/pages/perfil_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class corteTradicional extends StatefulWidget {
  const corteTradicional({super.key});

  @override
  State<corteTradicional> createState() => _corteTradicionalState();
}

class _corteTradicionalState extends State<corteTradicional> {
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
              'CORTE',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFD6F3FF)
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 150),
            child: Text(
              'TRADICIONAL',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFFAD9472)
              ),
            ),
          ),

                  Padding(
              padding: const EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), 
                child: Image.asset(
                  'assets/corte.jpg',
                  height: 200,
                  width: largura - 24,
                  fit: BoxFit.cover, 
                ),
              ),
            ),

          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: largura-8,
              height: 230,
              decoration: BoxDecoration(
                color: Color(0xFF4B5D65),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Corte na tesoura',
                        style: TextStyle(
                          color: Color(0xFFD6F1FD),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Text(
                      ' R15',
                      style: TextStyle(
                        color: Color(0xFFAD9472),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Color(0xFFD6F1FD),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(8),
                      child: Container(
                     
                        child: ElevatedButton(
                          onPressed: ()async{
                             SharedPreferences prefs = await SharedPreferences.getInstance();
                             prefs.setString("tipoCorte", "Tradicional");
                             prefs.setString("corteAtual", "Corte na tesoura");
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
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(

                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Corte Degrade',
                        style: TextStyle(
                          color: Color(0xFFD6F1FD),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Text(
                      ' RS20',
                      style: TextStyle(
                        color: Color(0xFFAD9472),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Color(0xFFD6F1FD),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                       
                        child: ElevatedButton(
                          
                          onPressed: ()async{
                           SharedPreferences prefs = await SharedPreferences.getInstance();
                           prefs.setString("tipoCorte", "Tradicional");
                             prefs.setString("corteAtual", "Corte Degrade");
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
                    ),
                  ],
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Corte Moicano',
                        style: TextStyle(
                          color: Color(0xFFD6F1FD),
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Text(
                      ' RS20',
                      style: TextStyle(
                        color: Color(0xFFAD9472),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text(
                      ':',
                      style: TextStyle(
                        color: Color(0xFFD6F1FD),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                       
                        child: ElevatedButton(
                          onPressed: ()async{
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.setString("tipoCorte", "Tradicional");
                             prefs.setString("corteAtual", "Corte Moicano");
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
                )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}