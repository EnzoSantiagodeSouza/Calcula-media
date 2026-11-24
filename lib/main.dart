import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _infoText = 'Informe as notas do aluno';

  TextEditingController nota1Controller = TextEditingController();
  TextEditingController nota2Controller = TextEditingController();
  TextEditingController nota3Controller = TextEditingController();
  TextEditingController nota4Controller = TextEditingController();

  void _calcular() {
    setState(() {
      double nota1 = double.parse(nota1Controller.text);
      double nota2 = double.parse(nota2Controller.text);
      double nota3 = double.parse(nota3Controller.text);
      double nota4 = double.parse(nota4Controller.text);

      double media = (nota1 + nota2 + nota3 + nota4) / 4;


      if (media == 5) {
        _infoText = 'Você ficou com R. Precisa estudar muito!';
      } else if (media >= 6 && media <=8) {
        _infoText = 'Você ficou com B. Precisa estudar um pouco mais!';
      } else if (media >= 9 && media <=10) {
        _infoText = 'Você ficou com MB. Foi aprovado com excelência!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo de Média'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      backgroundColor: const Color.fromARGB(255, 185, 236, 175),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nota 1',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.green, fontSize: 25.0),
              controller: nota1Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nota 2',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.green, fontSize: 25.0),
              controller: nota2Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nota 3',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.green, fontSize: 25.0),
              controller: nota3Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nota 4',
                labelStyle: TextStyle(color: Colors.green),
              ),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.green, fontSize: 25.0),
              controller: nota4Controller,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Container(
                height: 40.0,
                child: ElevatedButton(
                  onPressed: _calcular,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text('Calcular', 
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 25.0
                    )
                  ),
                ),
              ),
            ),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.green, fontSize: 25.0),
            )
          ],
        ),
      )
    );
  }
}