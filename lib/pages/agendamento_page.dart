import 'package:barbeariaflutter/pages/corte_tradicional.dart';
import 'package:barbeariaflutter/pages/home_page.dart';
import 'package:barbeariaflutter/shared/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class agendamento extends StatefulWidget {
  const agendamento({super.key});

  @override
  State<agendamento> createState() => _agendamentoState();
}

  TextEditingController _diaMesController = TextEditingController();
  TextEditingController _horaMinutoController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  bool _obscureText = true;
  
 Future<String> carregarCorte(String corte) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String data = prefs.getString("corteAtual")!;
    return data;
  }


class _agendamentoState extends State<agendamento> {
  @override
  Widget build(BuildContext context) {
     var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF353C3F),
      appBar: AppBar(
        backgroundColor: Color(0xFF000000),
        title: const Text(
          'Agendamento: ',
          style: TextStyle(
            color: Color(0xFFD6F2FF),
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              
                'SERVIÇO:',
                style: TextStyle(
                color: Color(0xFFD6F2FF),
                fontSize: 28,
                fontWeight: FontWeight.bold
                )
              ),
          ),
          
           Row(
            children: [
           
                 Text(
                  'Corte: ',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFD6F3FF)
                  )
                ),
              
              Padding(
                padding: EdgeInsets.all(8.0),
                child: FutureBuilder<String>(
          future: carregarCorte("corteAtual"),
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
            ],
          ),


          Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10),
            child: Container(
              width: largura-8,
              height: 400,
              decoration: BoxDecoration(
                color: Color(0xFF4B5D65),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10, right: 120),
                    child: Text(
                      'Informe a data \ndo seviço:',
                      style: TextStyle(
                        color: Color(0xFFD6F2FF),
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 120),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        controller: _diaMesController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.date_range,
                            color: Color(0xFFAD9472),
                            size: 30,
                          ),
                          
                          hintText: "DD/MM",
                          hintStyle: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFF677B83)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, right: 85),
                    child: Text(
                      'Informe o horario \ndo seviço:',
                      style: TextStyle(
                        color: Color(0xFFD6F2FF),
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, right: 120),
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: TextField(
                        controller: _horaMinutoController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.date_range,
                            color: Color(0xFFAD9472),
                            size: 30,
                          ),
                          hintText: "HH/MM",
                          hintStyle: const TextStyle(
                            fontSize: 20,
                            color: Color(0xFF677B83)
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 200, top: 10),
                    child: Text(
                      'Senha:',
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFD6F1FD)
                      ),
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFF5C7884),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: TextField(
                      obscureText: _obscureText,
                      controller: _senhaController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFFD6F1FD),
                        ),
                        hintText: "Digite sua senha",
                        hintStyle: const TextStyle(
                          fontSize: 20,
                          color: Color(0xFF74909C)
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
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5),
              child: Container(
                width: 170,
                height: 50,
                child: ElevatedButton(onPressed: ()async{
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  if(_senhaController.text==prefs.getString(tema().senha)){
                    prefs.setString("diaMesAgendado",_diaMesController.text);
                   prefs.setString("horaMinutoAgendado", _horaMinutoController.text);
                      Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Home(),)
                  );
                  }
               
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: const Text(
                  'Enviar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  ),
                )
                ),
               ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 5),
              child: Container(
                width: 170,
                height: 50,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Home(),)
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.red
                  ),
                )
                ),
               ),
            )
            ],
          )
        ],
      ),
    );
  }
}